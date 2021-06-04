#!/bin/sh

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 10 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm10_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 50 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm50_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 100 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm100_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 500 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm500_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm1000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 5000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm5000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 10000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm10000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 15000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm15000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 20000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm20000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 25000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm25000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 30000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm30000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 35000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm35000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 40000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm40000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 45000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm45000_imgnet

python3 ../../main2.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 50000 --num_passes 128 --regularization none --width 400 --model ELM_tinyimgnet --emb 128 --exp_name ens_elm50000_imgnet

