#!/bin/sh

for i in 4 8 16 32 64 128 256 512
do
    echo "~.~.~.~. ${i} ~.~.~.~."
    tail -1 "../../../logs/CIFAR100_ELM_3mib_EMB${i}_0/checkpoint.log"
done

