#!/bin/sh

for s in 0 1 2 3 4
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 1000 --num_passes 256 --regularization cutmix --model ResNet --depth 18 --exp_name imagenet100_12000kib_gdumb_s${s}
done

cd ../../../logs
python get_res.py imagenet100_12000kib_gdumb_s

