#!/bin/sh

###### MNIST ######
python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 1 --model ELM_mnist --emb 128 --exp_name elm1_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 2 --model ELM_mnist --emb 128 --exp_name elm2_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 5 --model ELM_mnist --emb 128 --exp_name elm5_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 10 --model ELM_mnist --emb 128 --exp_name elm10_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 100 --model ELM_mnist --emb 128 --exp_name elm100_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 150 --model ELM_mnist --emb 128 --exp_name elm150_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 200 --model ELM_mnist --emb 128 --exp_name elm200_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 250 --model ELM_mnist --emb 128 --exp_name elm250_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 300 --model ELM_mnist --emb 128 --exp_name elm300_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 350 --model ELM_mnist --emb 128 --exp_name elm350_mnist

##### CIFAR10 #####
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 1 --model ELM_cifar --emb 128 --exp_name elm1_cifar
#
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 2 --model ELM_cifar --emb 128 --exp_name elm2_cifar
#
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 5 --model ELM_cifar --emb 128 --exp_name elm5_cifar
#
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 10 --model ELM_cifar --emb 128 --exp_name elm10_cifar
#
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 100 --model ELM_cifar --emb 128 --exp_name elm100_cifar
#
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 150 --model ELM_cifar --emb 128 --exp_name elm150_cifar
#
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 200 --model ELM_cifar --emb 128 --exp_name elm200_cifar
#
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 250 --model ELM_cifar --emb 128 --exp_name elm250_cifar
#
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 300 --model ELM_cifar --emb 128 --exp_name elm300_cifar
#
#python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 2400 --num_passes 128 --regularization none --width 350 --model ELM_cifar --emb 128 --exp_name elm350_cifar

####### IMGNET #######
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 1 --model ELM_tinyimgnet --emb 128 --exp_name elm1_tinyimgnet
#
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 2 --model ELM_tinyimgnet --emb 128 --exp_name elm2_tinyimgnet
#
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 5 --model ELM_tinyimgnet --emb 128 --exp_name elm5_tinyimgnet
#
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 10 --model ELM_tinyimgnet --emb 128 --exp_name elm10_tinyimgnet
#
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 100 --model ELM_tinyimgnet --emb 128 --exp_name elm100_tinyimgnet
#
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 150 --model ELM_tinyimgnet --emb 128 --exp_name elm150_tinyimgnet
#
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 200 --model ELM_tinyimgnet --emb 128 --exp_name elm200_tinyimgnet
#
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 250 --model ELM_tinyimgnet --emb 128 --exp_name elm250_tinyimgnet
#
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 300 --model ELM_tinyimgnet --emb 128 --exp_name elm300_tinyimgnet
#
#python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 48000 --num_passes 128 --regularization none --width 350 --model ELM_tinyimgnet --emb 128 --exp_name elm350_tinyimgnet
#
####### core #######
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 1 --model ELM_core --emb 128 --exp_name elm1_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 2 --model ELM_core --emb 128 --exp_name elm2_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 5 --model ELM_core --emb 128 --exp_name elm5_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 10 --model ELM_core --emb 128 --exp_name elm10_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 100 --model ELM_core --emb 128 --exp_name elm100_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 150 --model ELM_core --emb 128 --exp_name elm150_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 200 --model ELM_core --emb 128 --exp_name elm200_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 250 --model ELM_core --emb 128 --exp_name elm250_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 300 --model ELM_core --emb 128 --exp_name elm300_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 350 --model ELM_core --emb 128 --exp_name elm350_core50

cd ../../../logs
echo "mnist"
tail -1 elm1_mnist/checkpoint.log
tail -1 elm2_mnist/checkpoint.log
tail -1 elm5_mnist/checkpoint.log
tail -1 elm10_mnist/checkpoint.log
tail -1 elm100_mnist/checkpoint.log
tail -1 elm150_mnist/checkpoint.log
tail -1 elm200_mnist/checkpoint.log
tail -1 elm250_mnist/checkpoint.log
tail -1 elm300_mnist/checkpoint.log
tail -1 elm350_mnist/checkpoint.log

echo "cifar"
tail -1 elm1_cifar/checkpoint.log
tail -1 elm2_cifar/checkpoint.log
tail -1 elm5_cifar/checkpoint.log
tail -1 elm10_cifar/checkpoint.log
tail -1 elm100_cifar/checkpoint.log
tail -1 elm150_cifar/checkpoint.log
tail -1 elm200_cifar/checkpoint.log
tail -1 elm250_cifar/checkpoint.log
tail -1 elm300_cifar/checkpoint.log
tail -1 elm350_cifar/checkpoint.log

echo "imgnet"
tail -1 elm1_tinyimgnet/checkpoint.log
tail -1 elm2_tinyimgnet/checkpoint.log
tail -1 elm5_tinyimgnet/checkpoint.log
tail -1 elm10_tinyimgnet/checkpoint.log
tail -1 elm100_tinyimgnet/checkpoint.log
tail -1 elm150_tinyimgnet/checkpoint.log
tail -1 elm200_tinyimgnet/checkpoint.log
tail -1 elm250_tinyimgnet/checkpoint.log
tail -1 elm300_tinyimgnet/checkpoint.log
tail -1 elm350_tinyimgnet/checkpoint.log

echo "core"
tail -1 elm1_core50/checkpoint.log
tail -1 elm2_core50/checkpoint.log
tail -1 elm5_core50/checkpoint.log
tail -1 elm10_core50/checkpoint.log
tail -1 elm100_core50/checkpoint.log
tail -1 elm150_core50/checkpoint.log
tail -1 elm200_core50/checkpoint.log
tail -1 elm250_core50/checkpoint.log
tail -1 elm300_core50/checkpoint.log
tail -1 elm350_core50/checkpoint.log

