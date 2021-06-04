
import torch, os, time
import numpy as np
from dataloader import VisionDataset 
from models import mnist, cifar, imagenet
from models.layers import FinalBlock
from models.layers import FCBlock, FinalBlock
from torch import nn, optim
from opts import parse_args
from utils import AverageMeter, get_accuracy, cutmix_data, get_logger, seed_everything, save_model, load_model, majority_vote
import ipdb

class ELM_tinyimgnet(nn.Module):
    def __init__(self, opt):
        super(ELM_tinyimgnet, self).__init__()

        self.orth_mat = torch.nn.init.orthogonal_(torch.empty(64*64*3, opt.emb)).to(torch.float16).to('cuda')
        self.input = FCBlock(opt=opt, in_channels=opt.emb, out_channels=opt.width)
        self.hidden1 = FCBlock(opt=opt, in_channels=opt.width, out_channels=opt.width)
        self.final = FinalBlock(opt=opt, in_channels=opt.width)

    def forward(self, _x):
        _x = _x.view(_x.shape[0], 1, 64*64*3)
        _x = torch.matmul(_x, self.orth_mat)
        _out = _x.view(_x.size(0), -1)
        _out = self.input(_out)
        _out = self.hidden1(_out)
        _out = self.final(_out)
        return _out

class ELM_cifar(nn.Module):
    def __init__(self, opt):
        super(ELM_cifar, self).__init__()

        self.orth_mat = torch.nn.init.orthogonal_(torch.empty(32*32*3, opt.emb)).to(torch.float16).to('cuda')
        self.input = FCBlock(opt=opt, in_channels=opt.emb, out_channels=opt.width)
        self.hidden1 = FCBlock(opt=opt, in_channels=opt.width, out_channels=opt.width)
        self.final = FinalBlock(opt=opt, in_channels=opt.width)

    def forward(self, _x):
        _x = _x.view(_x.shape[0], 1, 32*32*3)
        _x = torch.matmul(_x, self.orth_mat)
        _out = _x.view(_x.size(0), -1)
        _out = self.input(_out)
        _out = self.hidden1(_out)
        _out = self.final(_out)
        return _out
 
def experiment(opt, class_mask, train_loader, test_loader, models, logger, num_passes):
 
    best_prec1 = 0.0
    best_task_prec1 = 0.0
 
    optimizers = []
    schedulers = []
    for model in models:
        model = model.half().cuda() # Better speed with little loss in accuracy. If loss in accuracy is big, use apex.
        optimizer = optim.SGD(model.parameters(), lr=opt.maxlr, momentum=0.9, weight_decay=opt.weight_decay)
        scheduler = optim.lr_scheduler.CosineAnnealingWarmRestarts(optimizer, T_0=1, T_mult=2, eta_min=opt.minlr) 
        optimizers.append(optimizer)
        schedulers.append(scheduler)
 
    criterion = nn.CrossEntropyLoss().cuda()
 
    logger.info("==> Opts for this training: "+str(opt))
 
    for epoch in range(num_passes):
 
        # Handle lr scheduling
        if epoch <= 0: # Warm start of 1 epoch
            for optimizer in optimizers:
                for param_group in optimizer.param_groups:
                    param_group['lr'] = opt.maxlr * 0.1
        elif epoch == 1: # Then set to maxlr
            for optimizer in optimizers:
                for param_group in optimizer.param_groups:
                    param_group['lr'] = opt.maxlr
        else: # Aand go!
            for scheduler in schedulers:
                scheduler.step()
 
        # Train and test loop
        for i, (model, optimizer) in enumerate(zip(models, optimizers)):
            logger.info("==> Starting pass number: "+str(epoch)+", Learning rate: " + str(optimizer.param_groups[0]['lr']))
            model, optimizer = train(opt=opt, loader=train_loader, model=model, criterion=criterion, optimizer=optimizer, epoch=epoch, logger=logger)
 
        prec1, task_prec1 = test(loader=test_loader, models=models, criterion=criterion, class_mask=class_mask, logger=logger, epoch=epoch)
 
        # Log performance
        logger.info('==> Current accuracy: [{0:.3f}]\t Task Acc: [{1:.3f}]'.format(prec1, task_prec1))
        if prec1 > best_prec1:
            logger.info('==> Accuracies\tPrevious: [{:.3f}]\t'.format(best_prec1) + 'Current: [{:.3f}]\t'.format(prec1))
            best_prec1 = float(prec1)
        if task_prec1 > best_task_prec1:
            best_task_prec1 = float(task_prec1)
 
    # logger.info('==> Training completed! Acc: [{0:.3f}]'.format(best_prec1))
    logger.info('==> Training completed! Acc: [{0:.3f}]\t Task Acc: [{1:.3f}]'.format(best_prec1, best_task_prec1))
    return best_prec1, best_task_prec1, models
 
 
def test(loader, models, criterion, class_mask, logger, epoch):
        losses, batch_time, accuracy, task_accuracy = AverageMeter(), AverageMeter(), AverageMeter(), AverageMeter()
 
        with torch.no_grad():
            start = time.time()
            for inputs, labels in loader:
                # Get outputs
                inputs, labels = inputs.half().cuda(non_blocking=True), labels.cuda(non_blocking=True)
 
                for i, model in enumerate(models):
                    model.eval()
                    outputs = model(inputs)
 
                    loss = criterion(outputs, labels)
                    losses.update(loss.data, inputs.size(0))
 
                    # Measure accuracy and task accuracy 
 
                    prob = torch.nn.functional.softmax(outputs, dim=1)
                    pred = torch.argmax(prob, axis=1).unsqueeze(0)
                    mask_pred = torch.argmax(class_mask[labels] * prob, dim=1).unsqueeze(0)
 
                    if i == 0:
                        preds = pred
                        mask_preds = mask_pred
                    else:
                        preds = torch.cat((preds, pred), dim=0)
                        mask_preds = torch.cat((mask_preds, mask_pred), dim=0)
 
                major_pred = majority_vote(preds)
                major_mask_pred = majority_vote(mask_preds)
 
                accu = (torch.eq(major_pred.cuda(), labels.cuda())*1.0).mean()
                task_accu = (torch.eq(major_mask_pred.cuda(), labels.cuda())*1.0).mean()
 
                # acc, task_acc = get_accuracy(prob, labels, class_mask)
                accuracy.update(accu, labels.size(0))
                task_accuracy.update(task_accu, labels.size(0))
                batch_time.update(time.time() - start)
                start = time.time()
 
        logger.info('==> Test: [{0}]\tTime:{batch_time.sum:.4f}\tLoss:{losses.avg:.4f}\tAcc:{acc.avg:.4f}\tTask Acc:{task_acc.avg:.4f}\t'
            .format(epoch, batch_time=batch_time, losses=losses, acc=accuracy, task_acc=task_accuracy))
        return accuracy.avg, task_accuracy.avg
 
 
def train(opt, loader, model, criterion, optimizer, epoch, logger):
        model.train()
        losses, data_time, batch_time = AverageMeter(), AverageMeter(), AverageMeter()
        start = time.time()
 
        for inputs, labels in loader: # Tweak inputs
            inputs, labels = inputs.half().cuda(non_blocking=True), (labels).cuda(non_blocking=True)
            do_cutmix = opt.regularization == 'cutmix' and np.random.rand(1) < opt.cutmix_prob
            if do_cutmix: inputs, labels_a, labels_b, lam = cutmix_data(x=inputs, y=labels, alpha=opt.cutmix_alpha)
            data_time.update(time.time() - start)
 
            # Forward, backward passes then step
            outputs = model(inputs)
            loss = lam * criterion(outputs, labels_a) + (1 - lam) * criterion(outputs, labels_b) if do_cutmix else criterion(outputs, labels)
            optimizer.zero_grad()
            loss.backward()
            torch.nn.utils.clip_grad_norm_(model.parameters(), opt.clip) # Always be safe than sorry
            optimizer.step()
 
            # Log losses
            losses.update(loss.data.item(), labels.size(0))
            batch_time.update(time.time() - start)
            start = time.time()
 
        logger.info('==> Train:[{0}]\tTime:{batch_time.sum:.4f}\tData:{data_time.sum:.4f}\tLoss:{loss.avg:.4f}\t'
            .format(epoch, batch_time=batch_time, data_time=data_time, loss=losses))
        return model, optimizer
 
 
if __name__ == '__main__':
    # Parse arguments
    opt = parse_args()
    seed_everything(seed=opt.seed)
 
    # Setup logger
    console_logger = get_logger(folder=opt.log_dir+'/'+opt.exp_name+'/')
 
    # Handle fixed class orders. Note: Class ordering code hacky. Would need to manually adjust here to test for different datasets.
    console_logger.debug("==> Loading dataset..")
    class_order = [87, 0, 52, 58, 44, 91, 68, 97, 51, 15, 94, 92, 10, 72, 49, 78, 61, 14, 8, 86, 84, 96, 18, 24, 32, 45, 88, 11, 4, 67, 69, 66, 77, 47, 79, 93, 29, 50, 57, 83, 17, 81, 41, 12, 37, 59, 25, 20, 80, 73, 1, 28, 6, 46, 62, 82, 53, 9, 31, 75, 38, 63, 33, 74, 27, 22, 36, 3, 16, 21, 60, 19, 70, 90, 89, 43, 5, 42, 65, 76, 40, 30, 23, 85, 2, 95, 56, 48, 71, 64, 98, 13, 99, 7, 34, 55, 54, 26, 35, 39] #Currently testing using iCARL test order-- restricted to CIFAR100. For the other class orders refer to https://github.com/arthurdouillard/incremental_learning.pytorch/tree/master/options/data
    if opt.dataset != 'CIFAR100' and opt.dataset !='ImageNet100': class_order=None
 
    # Handle 'path does not exist errors' 
    if not os.path.isdir(opt.log_dir+'/'+opt.exp_name):
        os.mkdir(opt.log_dir+'/'+opt.exp_name)
    if opt.old_exp_name!='test' and not os.path.isdir(opt.log_dir+'/'+opt.old_exp_name):
        os.mkdir(opt.log_dir+'/'+opt.old_exp_name)    
 
    # Set pretraining and continual dataloaders
    dobj = VisionDataset(opt, class_order=class_order)
    dobj.gen_cl_mapping()
 
    # Scenario #1: First pretraining on n classes, then do continual learning
    if opt.num_pretrain_classes > 0: 
        opt.num_classes = opt.num_pretrain_classes
        if opt.inp_size == 28: model = getattr(mnist, opt.model)(opt)
        if opt.inp_size == 32 or opt.inp_size == 64: model = getattr(cifar, opt.model)(opt)
        if opt.inp_size ==224: model = getattr(imagenet, opt.model)(opt)      
        if not os.path.isfile(opt.log_dir+opt.old_exp_name+'/pretrained_model.pth.tar'):
            console_logger.debug("==> Starting pre-training..") 
            _, model = experiment(opt=opt, class_mask=torch.ones(opt.num_classes,opt.num_classes).cuda(), train_loader=dobj.pretrain_loader, \
                                    test_loader=dobj.pretest_loader, model=model, logger=console_logger, num_passes=opt.num_pretrain_passes)
            save_model(opt, model) # Saves the pretrained model. Subsequent CL experiments directly load the pretrained model.
        else:
            model = load_model(opt, model, console_logger)
        # Reset the final block to new set of classes
        opt.num_classes = opt.num_classes_per_task*opt.num_tasks
        model.final = FinalBlock(opt, model.dim_out)
 
    # Scenario #2: Directly do continual learning from scratch
    else: 
        opt.num_classes = opt.num_classes_per_task*opt.num_tasks
        if opt.inp_size == 28: 
            models = [getattr(mnist, opt.model)(opt) for i in range(3)]
        if opt.inp_size == 32 or opt.inp_size == 64: 
            if opt.dataset == 'CIFAR10': 
                models = [ELM_cifar(opt) for i in range(11)]
            elif opt.dataset == 'TinyImagenet100':
                models = [ELM_tinyimgnet(opt) for i in range(11)]
        if opt.inp_size ==224: 
            model = getattr(imagenet, opt.model)(opt)  
 
    console_logger.debug("==> Starting Continual Learning Training..")
 
    best_acc1,best_task_acc1, models = experiment(opt=opt, class_mask=dobj.class_mask, train_loader=dobj.cltrain_loader, test_loader=dobj.cltest_loader, models=models, logger=console_logger, num_passes=opt.num_passes)
 
    console_logger.debug("==> Completed!")

