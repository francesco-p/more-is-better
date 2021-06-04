#!/bin/sh

python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 10 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb10_tinyimgnet

python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 50 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb50_tinyimgnet

python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 100 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb100_tinyimgnet

python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 500 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb500_tinyimgnet

python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 1000 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb1000_tinyimgnet

python3 ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 1250 --num_passes 128 --regularization cutmix --depth 18 --model ResNet --exp_name gdumb1250_tinyimgnet
