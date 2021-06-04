#!/bin/sh

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize10_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 50 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize50_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 100 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize100_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 500 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize500_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize1000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 5000 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize5000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 10000 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize10000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 20000 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize20000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 40000 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize40000_mnist

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 60000 --num_passes 256 --width 400 --insize 64 --resize 8 --regularization none --model MLP --exp_name resize60000_mnist


