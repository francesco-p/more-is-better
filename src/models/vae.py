
from torch.nn import functional as F
from torchvision.utils import save_image
from torchvision import datasets, transforms
import torchvision
import torch.nn as nn
import torch.optim as optim
import torch
import matplotlib.pyplot as plt


# Reconstruction + KL divergence losses summed over all elements and batch
def loss_function(recon_x, x, mu, logvar):
    BCE = F.binary_cross_entropy(recon_x, x.view(-1, 784), reduction='sum')
    # see Appendix B from VAE paper:
    # Kingma and Welling. Auto-Encoding Variational Bayes. ICLR, 2014
    # https://arxiv.org/abs/1312.6114
    # 0.5 * sum(1 + log(sigma^2) - mu^2 - sigma^2)
    KLD = -0.5 * torch.sum(1 + logvar - mu.pow(2) - logvar.exp())
    return BCE + KLD

class VAE1C(nn.Module):
    def __init__(self, embsize):
        super(VAE1C, self).__init__()
        self.embsize = embsize

        self.fc1 = nn.Linear(784, 400)
        self.fc21 = nn.Linear(400, embsize) # <----- mu
        self.fc22 = nn.Linear(400, embsize) # <----- sigma (logvar)


        self.fc3 = nn.Linear(embsize, 400) 
        self.fc4 = nn.Linear(400, 784)

    def encode(self, x):
        h1 = F.relu(self.fc1(x))
        return self.fc21(h1), self.fc22(h1)

    def reparameterize(self, mu, logvar):
        std = torch.exp(0.5*logvar)
        eps = torch.randn_like(std)
        return mu + eps*std

    def decode(self, z):
        h3 = F.relu(self.fc3(z))
        return torch.sigmoid(self.fc4(h3))

    def forward(self, x):
        mu, logvar = self.encode(x.view(-1, 784))
        z = self.reparameterize(mu, logvar)
        return self.decode(z), mu, logvar


def train(epoch):
    model.train()
    train_loss = 0
    for batch_idx, (data, _) in enumerate(train_loader):
        data = data.to(device)
        optimizer.zero_grad()
        recon_batch, mu, logvar = model(data)
        loss = loss_function(recon_batch, data, mu, logvar)
        loss.backward()
        train_loss += loss.item()
        optimizer.step()
        if batch_idx % 100 == 0:
            print('Train Epoch: {} [{}/{} ({:.0f}%)]\tLoss: {:.6f}'.format( epoch, batch_idx * len(data), len(train_loader.dataset), 100. * batch_idx / len(train_loader), loss.item() / len(data)))
    print('====> Epoch: {} Average loss: {:.4f}'.format( epoch, train_loss / len(train_loader.dataset)))


def test(epoch):
    model.eval()
    test_loss = 0
    with torch.no_grad():
        for i, (data, _) in enumerate(test_loader):
            data = data.to(device)
            recon_batch, mu, logvar = model(data)
            test_loss += loss_function(recon_batch, data, mu, logvar).item()
            if i == 0:
                n = min(data.size(0), 8)
                comparison = torch.cat([data[:n], recon_batch.view(64, 1, 28, 28)[:n]]) 
                save_image(comparison.cpu(), '/tmp/results/reconstruction_' + str(epoch) + '.png', nrow=n)

    test_loss /= len(test_loader.dataset) 
    print('====> Test set loss: {:.4f}'.format(test_loss))


#embsize=8
#fname = '../../models/vae_kmnist_8.pt'
#device = 'cuda'
#
#train_loader = torch.utils.data.DataLoader( datasets.KMNIST('../../../data', train=True, download=True, transform=transforms.ToTensor()),batch_size=64, shuffle=True)
#test_loader = torch.utils.data.DataLoader( datasets.KMNIST('../../../data', train=False, transform=transforms.ToTensor()), batch_size=64, shuffle=True)
#model = VAE1C(embsize).to(device)
#
##test_loader = torch.utils.data.DataLoader( datasets.MNIST('/tmp/data', train=True, download=True, transform=transforms.ToTensor()), batch_size=64, shuffle=True)
##model.load_state_dict(torch.load('../../models/vae_kmnist_128.pt'))
##model.eval()
#
#
#optimizer = optim.Adam(model.parameters(), lr=1e-3)
#for epoch in range(1, 10 + 1):
#    train(epoch)
#    test(epoch)
#    with torch.no_grad():
#        sample = torch.randn(64, embsize).to(device)
#        sample = model.decode(sample).cpu()
#        save_image(sample.view(64, 1, 28, 28), '/tmp/results/sample_' + str(epoch) + '.png')
#
#torch.save(model.state_dict(), fname)

