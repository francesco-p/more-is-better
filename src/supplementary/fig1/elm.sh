#!/bin/sh

### CIFAR10
python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 16 --exp_name sum_elm1000_16_cifar
python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 32 --exp_name sum_elm1000_32_cifar
python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 64 --exp_name sum_elm1000_64_cifar
python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name sum_elm1000_128_cifar
python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 256 --exp_name sum_elm1000_256_cifar
python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 512 --exp_name sum_elm1000_512_cifar

for i in 16 32 64 128 256 512
do
  tail -1 ../../../logs/sum_elm1000_${i}_cifar/checkpoint.log
done

### Core50
python3 ../../main.py --dataset Core50 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 16 --exp_name sum_elm8000_16_core
python3 ../../main.py --dataset Core50 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 32 --exp_name sum_elm8000_32_core
python3 ../../main.py --dataset Core50 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 64 --exp_name sum_elm8000_64_core
python3 ../../main.py --dataset Core50 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name sum_elm8000_128_core
python3 ../../main.py --dataset Core50 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 256 --exp_name sum_elm8000_256_core
python3 ../../main.py --dataset Core50 --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size 8000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 512 --exp_name sum_elm8000_512_core

for i in 16 32 64 128 256 512
do
    tail -1 ../../../logs/sum_elm8000_${i}_core/checkpoint.log
done

