#!/bin/sh

MEM=1200
EMB=256
i=0
python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed $i --memory_size $MEM --num_passes 256 --regularization none --width 400 --model ELM_cifar --emb $EMB --exp_name CIFAR100_ELM_3mib_EMB${EMB}_${i}

