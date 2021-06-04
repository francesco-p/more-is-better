#!/bin/sh

for s in 0 1 2 3 4
do
    python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 16000 --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 6 --depth 18 --exp_name cifar100_3mib_cutresnet_6_8x8_s${s}
done

cd ../../../logs
python get_res.py cifar100_3mib_cutresnet_6_8x8_s
