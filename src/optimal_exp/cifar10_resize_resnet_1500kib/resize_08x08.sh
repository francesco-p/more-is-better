#!/bin/sh

MEM=8000
RES=8

for s in 0 1 2 3 4 
do
    echo "---- cifar10_1500kib_resize_8x8_s${s} ----"
    python ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size $MEM --num_passes 256 --resize $RES --regularization cutmix --model ResNet --depth 18 --exp_name cifar10_1500kib_resize_8x8_s${s}
done



for s in 0 1 2 3 4 
do
    echo "~.~.~.~. ${s} ~.~.~.~."
    tail -1 "../../../logs/cifar10_1500kib_resize_8x8_s${s}/checkpoint.log"
done

