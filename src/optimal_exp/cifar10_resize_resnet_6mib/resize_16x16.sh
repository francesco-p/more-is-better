#!/bin/sh

MEM=8000
EMB=16

for s in 0 1 2 3 4
do
    python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed $s --memory_size $MEM --resize $EMB --num_passes 256 --regularization cutmix --model ResNet --depth 18 --exp_name cifar10_6mib_resize_${EMB}x${EMB}_s${s}
done


for s in 0 1 2 3 4
do
    echo "~.~.~. cifar10_6mib_resize_${EMB}x${EMB} ~.~.~."
    tail -1 "../../../logs/cifar10_6mib_resize_${EMB}x${EMB}_s${s}/checkpoint.log"
done

