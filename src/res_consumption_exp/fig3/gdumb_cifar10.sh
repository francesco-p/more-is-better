#!/bin/sh

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb10_cifar

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb50_cifar

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 100 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb100_cifar

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 500 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb500_cifar

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb1000_cifar

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 5000 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb5000_cifar
