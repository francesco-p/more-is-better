#!/bin/sh

for s in 0 1 2 3 4
do
    python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed $s --memory_size 8000 --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 5 --depth 18 --exp_name cifar10_1500kib_cutresnet_5_8x8_s${s}
done

cd ../../../logs/
python get_res.py cifar10_1500kib_cutresnet_5_8x8_s

