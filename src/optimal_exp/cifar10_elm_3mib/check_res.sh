#!/bin/sh

#Mem size = 3000 KiB, emb = 4 is 0.008 KiB, n = 384000
#Mem size = 3000 KiB, emb = 8 is 0.016 KiB, n = 192000
#Mem size = 3000 KiB, emb = 16 is 0.031 KiB, n = 96000
#Mem size = 3000 KiB, emb = 32 is 0.062 KiB, n = 48000
#Mem size = 3000 KiB, emb = 64 is 0.125 KiB, n = 24000
#Mem size = 3000 KiB, emb = 128 is 0.250 KiB, n = 12000
#Mem size = 3000 KiB, emb = 256 is 0.500 KiB, n = 6000

for i in 4 8 16 32 64 128 256 512
do
    echo "~.~.~.~. ${i} ~.~.~.~."
    tail -1 "../../../logs/CIFAR10_ELM_3mib_EMB${i}_0/checkpoint.log"
done

