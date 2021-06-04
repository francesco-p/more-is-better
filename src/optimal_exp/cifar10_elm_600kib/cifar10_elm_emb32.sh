#!/bin/sh

MEM=9600
EMB=32

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size $MEM --num_passes 256 --regularization none --width 400 --model ELM_cifar --emb $EMB --exp_name cifar10_600kib_elm_${EMB}_s0

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 1 --memory_size $MEM --num_passes 256 --regularization none --width 400 --model ELM_cifar --emb $EMB --exp_name cifar10_600kib_elm_${EMB}_s1
j
python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 2 --memory_size $MEM --num_passes 256 --regularization none --width 400 --model ELM_cifar --emb $EMB --exp_name cifar10_600kib_elm_${EMB}_s2

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 3 --memory_size $MEM --num_passes 256 --regularization none --width 400 --model ELM_cifar --emb $EMB --exp_name cifar10_600kib_elm_${EMB}_s3

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 4 --memory_size $MEM --num_passes 256 --regularization none --width 400 --model ELM_cifar --emb $EMB --exp_name cifar10_600kib_elm_${EMB}_s4


echo "####### cifar10_600kib_elm_${EMB} ####### "
for s in 0 1 2 3 4 
do
    echo "~.~.~.~. ${s} ~.~.~.~."
    tail -1 "../../../logs/cifar10_600kib_elm_${EMB}_s${s}/checkpoint.log"
done

