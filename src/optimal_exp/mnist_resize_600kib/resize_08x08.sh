#!/bin/sh

MEM=6112
RES=8
INS=64

python3 ../../main.py  --dataset MNIST --resize $RES --insize $INS --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --exp_name mnist_600kib_resize_${RES}x${RES}_s0

python3 ../../main.py  --dataset MNIST --resize $RES --insize $INS --num_classes_per_task 2 --num_tasks 5 --seed 1 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --exp_name mnist_600kib_resize_${RES}x${RES}_s1

python3 ../../main.py  --dataset MNIST --resize $RES --insize $INS --num_classes_per_task 2 --num_tasks 5 --seed 2 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --exp_name mnist_600kib_resize_${RES}x${RES}_s2

python3 ../../main.py  --dataset MNIST --resize $RES --insize $INS --num_classes_per_task 2 --num_tasks 5 --seed 3 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --exp_name mnist_600kib_resize_${RES}x${RES}_s3

python3 ../../main.py  --dataset MNIST --resize $RES --insize $INS --num_classes_per_task 2 --num_tasks 5 --seed 4 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --exp_name mnist_600kib_resize_${RES}x${RES}_s4


echo "######## mnist_600kib_resize_${RES}x${RES} ########"
for s in 0 1 2 3 4 
do
    echo "~.~.~.~. ${s} ~.~.~.~."
    tail -1 "../../../logs/mnist_600kib_resize_${RES}x${RES}_s${s}/checkpoint.log"
done

