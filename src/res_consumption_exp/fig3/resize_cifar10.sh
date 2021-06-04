#!/bin/sh

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize10_cifar10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize50_cifar10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 100 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize100_cifar10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 500 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize500_cifar10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize1000_cifar10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 5000 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize5000_cifar10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10000 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize10000_cifar10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 20000 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize20000_cifar10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 40000 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize40000_cifar10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50000 --num_passes 256 --resize 8 --depth 18 --regularization cutmix --model ResNet --exp_name resize50000_cifar10


