#!/bin/sh

for s in 0 1 2 3 4
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 96000 --num_passes 128 --regularization none --model ELM_tinyimgnet --width 400 --emb 128 --exp_name imagenet100_24000kib_elm_128_s${s}
done

cd ../../../logs
python get_res.py imagenet100_24000kib_elm_128_s

