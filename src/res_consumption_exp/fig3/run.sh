#!/bin/sh

# Figure 4 of the paper

sh elm_cifar10.sh
sh elm_cifar100.sh
sh elm_imgnet.sh
sh elm_core50.sh
sh elm_mnist.sh

sh gdumb_cifar10.sh
sh gdumb_cifar100.sh
sh gdumb_imgnet.sh
sh gdumb_core50.sh
sh gdumb_mnist.sh

sh resize_cifar10.sh
sh resize_cifar100.sh
sh resize_imgnet.sh
sh resize_core50.sh
sh resize_mnist.sh

sh check.sh > res.csv
