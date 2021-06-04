#!/bin/sh

MEM=6000
EMB=256

for s in 0 1 2 3 4 
do
    python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed $s --memory_size $MEM --num_passes 256 --regularization none --width 400 --model ELM_cifar --emb $EMB --exp_name cifar10_3mib_elm_${EMB}_s${s}
done


for s in 0 1 2 3 4 
do
    echo "~.~.~.~. cifar10_3mib_elm_${EMB}_s${s} ~.~.~.~."
    tail -1 "../../../logs/cifar10_3mib_elm_${EMB}_s${s}/checkpoint.log"
done

