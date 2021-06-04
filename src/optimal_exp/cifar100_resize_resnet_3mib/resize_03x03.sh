#!/bin/sh

python ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 113777 --resize 3 --num_passes 256 --regularization cutmix --model ResNet --depth 18 --exp_name CIFAR100_ResNet18_3mib_3x3_seed0

