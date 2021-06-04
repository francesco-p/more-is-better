#!/bin/sh

MEM=4800
EMB=64
i=0
python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb $EMB --exp_name CIFAR100_ELM_3mib_EMB${EMB}_${i}

