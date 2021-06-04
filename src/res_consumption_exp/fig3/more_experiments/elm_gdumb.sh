#!/bin/sh

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm50000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm50000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm50000
