#!/bin/sh

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm10

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm50

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 100 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm100

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 500 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm500

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm1000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 5000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm5000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm10000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 15000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm15000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 20000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm20000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 25000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm25000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 30000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm30000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 35000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm35000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 40000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm40000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 45000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm45000

python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm50000


