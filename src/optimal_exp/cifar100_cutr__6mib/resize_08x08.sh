#!/bin/sh


for s in 0 1 2 3 4
do
    python ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 32000 --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 5 --depth 18 --exp_name cifar100_6mib_cutr_5_8x8_s${s}
done


cd ../../../logs/
python get_res.py cifar100_6mib_cutr_5_8x8_s

