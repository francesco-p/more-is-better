#!/bin/sh

MEM=4000
RES=16

for s in 0 1 2 3 4
do
    python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed $s --memory_size $MEM  --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 7 --depth 18 --exp_name cifar10_3mib_cutresnet_7_${RES}x${RES}_s${s}
done


cd ../../../logs
python get_res.py cifar10_3mib_cutresnet_7_${RES}x${RES}_s

