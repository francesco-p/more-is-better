#!/bin/sh

MEM=24000
EMB=128


for s in 0 1 2 3 4
do
    python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb $EMB --exp_name cifar100_6mib_elm_${EMB}_s${s}
done

cd ../../../logs
python get_res.py cifar100_6mib_elm_${EMB}_s

