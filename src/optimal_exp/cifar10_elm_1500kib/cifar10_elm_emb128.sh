#!/bin/sh

for s in 0 1 2 3 4
do
    python3 ../../main.py --dataset CIFAR10 --num_classes_per_task 2 --num_tasks 5 --seed $s --memory_size 6000 --num_passes 128 --regularization none --width 400 --model ELM_cifar --emb 128 --exp_name cifar10_1500kib_emb_128_s${s}
done

cd ../../../logs/
python get_res.py cifar10_1500kib_emb_128_s


# 0.474
# 0.474
# 0.468
# 0.472
# 0.469

