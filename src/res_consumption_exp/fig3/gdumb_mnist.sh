#!/bin/sh

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10 --num_passes 128 --width 400 --insize 784 --regularization none --model MLP --exp_name gdumb10_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50 --num_passes 128 --width 400 --insize 784 --regularization none --model MLP --exp_name gdumb50_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 100 --num_passes 128 --width 400 --insize 784 --regularization none --model MLP --exp_name gdumb100_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 500 --num_passes 128 --width 400 --insize 784 --regularization none --model MLP --exp_name gdumb500_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --width 400 --insize 784 --regularization none --model MLP --exp_name gdumb1000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 5000 --num_passes 128 --width 400 --insize 784 --regularization none --model MLP --exp_name gdumb5000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 6530 --num_passes 128 --width 400 --insize 784 --regularization none --model MLP --exp_name gdumb6530_mnist


