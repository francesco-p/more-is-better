#!/bin/sh

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 10 --num_passes 256 --depth 18 --resize 8 --regularization cutmix --model ResNet --exp_name resize10_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 50 --num_passes 256 --depth 18 --resize 8 --regularization cutmix --model ResNet --exp_name resize50_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 100 --num_passes 256 --depth 18 --resize 8 --regularization cutmix --model ResNet --exp_name resize100_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 500 --num_passes 256 --depth 18 --resize 8 --regularization cutmix --model ResNet --exp_name resize500_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 1000 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize1000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 5000 --num_passes 256 --depth 18 --resize 8 --regularization cutmix --model ResNet --exp_name resize5000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 10000 --num_passes 256 --depth 18 --resize 8 --regularization cutmix --model ResNet --exp_name resize10000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 20000 --num_passes 256 --depth 18 --resize 8 --regularization cutmix --model ResNet --exp_name resize20000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 40000 --num_passes 256 --depth 18 --resize 8 --regularization cutmix --model ResNet --exp_name resize40000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 50000 --num_passes 256 --depth 18 --resize 8 --regularization cutmix --model ResNet --exp_name resize50000_cifar100


