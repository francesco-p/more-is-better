#!/bin/sh

for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 128000 --num_passes 60 --regularization cutmix --model ResNet --resize 8 --depth 18 --exp_name imagenet100_24000kib_resize_8x8_s${s}
done

cd ../../../logs
python get_res.py imagenet100_24000kib_resize_8x8_s

