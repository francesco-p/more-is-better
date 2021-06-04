#!/bin/sh

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 12800 --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 4 --depth 18 --exp_name cifar10_600kib_cutresnet_4_4x4_s0

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 1 --memory_size 12800 --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 4 --depth 18 --exp_name cifar10_600kib_cutresnet_4_4x4_s1

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 2 --memory_size 12800 --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 4 --depth 18 --exp_name cifar10_600kib_cutresnet_4_4x4_s2

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 3 --memory_size 12800 --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 4 --depth 18 --exp_name cifar10_600kib_cutresnet_4_4x4_s3

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 4 --memory_size 12800 --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 4 --depth 18 --exp_name cifar10_600kib_cutresnet_4_4x4_s4

for s in 0 1 2 3 4 
do
    echo "~.~.~.~. ${s} ~.~.~.~."
    tail -1 "../../../logs/cifar10_600kib_cutresnet_4_4x4_s${s}"
done

