#!/bin/sh

for i in 1 2 3 4 8 12 16 24 28
do
    echo "~.~.~.~. ${i} ~.~.~.~."
    tail -1 "../../../logs/CIFAR10_ResNet18_3mib_${i}x${i}_seed0/checkpoint.log"
done

