#!/bin/sh

python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 16000 --resize 8 --num_passes 256 --regularization cutmix --model ResNet --depth 18 --exp_name CIFAR10_ResNet18_3mib_8x8_seed0
