#!/bin/sh

python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 10 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name gdumb10_core50

python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 50 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name gdumb50_core50

python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 100 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name gdumb100_core50

python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 312 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name gdumb312_core50



