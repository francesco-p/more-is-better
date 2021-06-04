#!/bin/sh

MEM=261
RES=28

python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 200 --num_passes 256 --resize $RES --regularization cutmix --model ResNet --depth 18 --exp_name cifar10_600kib_resize_${RES}x${RES}_s0

python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 1 --memory_size $MEM --num_passes 256 --resize $RES --regularization cutmix --model ResNet --depth 18 --exp_name cifar10_600kib_resize_${RES}x${RES}_s1

python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 2 --memory_size $MEM --num_passes 256 --resize $RES --regularization cutmix --model ResNet --depth 18 --exp_name cifar10_600kib_resize_${RES}x${RES}_s2

python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 3 --memory_size $MEM --num_passes 256 --resize $RES --regularization cutmix --model ResNet --depth 18 --exp_name cifar10_600kib_resize_${RES}x${RES}_s3

python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 4 --memory_size $MEM --num_passes 256 --resize $RES --regularization cutmix --model ResNet --depth 18 --exp_name cifar10_600kib_resize_${RES}x${RES}_s4


echo "../../../logs/cifar10_600kib_resize_${RES}x${RES}"
for s in 0 1 2 3 4 
do
    echo "~.~.~.~. ${s} ~.~.~.~."
    tail -1 "../../../logs/cifar10_600kib_resize_${RES}x${RES}_s${s}/checkpoint.log"
done

