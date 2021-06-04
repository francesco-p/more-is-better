#!/bin/sh

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm10_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm50_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 100 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm100_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 500 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm500_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm1000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 5000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm5000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm10000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 15000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm15000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 20000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm20000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 25000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm25000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 30000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm30000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 35000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm35000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 40000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm40000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 45000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm45000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm50000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 55000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm55000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 60000 --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb 128 --exp_name elm60000_mnist


