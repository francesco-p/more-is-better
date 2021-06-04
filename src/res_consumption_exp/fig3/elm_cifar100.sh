#!/bin/sh

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 10 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm10_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 50 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm50_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 100 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm100_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 500 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm500_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm1000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 5000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm5000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 10000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm10000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 15000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm15000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 20000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm20000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 25000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm25000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 30000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm30000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 35000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm35000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 40000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm40000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 45000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm45000_cifar100

python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 50000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name elm50000_cifar100

