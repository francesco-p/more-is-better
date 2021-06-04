#!/bin/sh

### CIFAR10
python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 256 --resize 4 --regularization cutmix --model ResNet --depth 18 --exp_name cifar_1000_resize_4
python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 256 --resize 8 --regularization cutmix --model ResNet --depth 18 --exp_name cifar_1000_resize_8
python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 256 --resize 16 --regularization cutmix --model ResNet --depth 18 --exp_name cifar_1000_resize_16
python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 256 --resize 24 --regularization cutmix --model ResNet --depth 18 --exp_name cifar_1000_resize_24

for i in 4 8 16 24
do
    tail -1 ../../../logs/cifar_1000_resize_${i}/checkpoint.log
done

### Core50
python ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 256 --resize 8 --regularization cutmix --model ResNet --depth 18 --exp_name core_8000_resize_8
python ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 256 --resize 16 --regularization cutmix --model ResNet --depth 18 --exp_name core_8000_resize_16
python ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 256 --resize 32 --regularization cutmix --model ResNet --depth 18 --exp_name core_8000_resize_32
python ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 8000 --num_passes 256 --resize 64 --regularization cutmix --model ResNet --depth 18 --exp_name core_8000_resize_64

for i in 8 16 32 64
do
    tail -1 ../../../logs/core_8000_resize_${i}/checkpoint.log
done

