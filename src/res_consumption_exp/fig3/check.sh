
cd ../../../logs


echo 'n,Dset,Approach,EmbeddingSize,MemoryExamples,Time,Accuracy'
# MNIST
i=0
for m in 10 50 100 500 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000
do 
    i=$((i+1))
    echo -n $i,MNIST,ELM,128,$m,
    python read_time.py elm${m}_mnist
    echo -n ','
    python read_acc.py elm${m}_mnist
    echo -n '\n'
done

# CIFAR10
i=0
for m in 10 50 100 500 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000
do 
    i=$((i+1))
    echo -n $i,CIFAR10,ELM,128,$m,
    python read_time.py elm${m}
    echo -n ','
    python read_acc.py elm${m}
    echo -n '\n'
done

# CIFAR100
i=0
for m in 10 50 100 500 1000 5000
do 
    i=$((i+1))
    echo -n $i,CIFAR100,ELM,128,$m,
    python read_time.py elm${m}_cifar100
    echo -n ','
    python read_acc.py elm${m}_cifar100
    echo -n '\n'
done

# CORE
i=0
for m in 10 50 100 500 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000
do 
    i=$((i+1))
    echo -n $i,Core50,ELM,128,$m,
    python read_time.py elm${m}_core50
    echo -n ','
    python read_acc.py elm${m}_core50
    echo -n '\n'
done

# Imgnet
i=0
for m in 10 50 100 500 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000
do 
    i=$((i+1))
    echo -n $i,ImageNet100,ELM,128,$m,
    python read_time.py elm${m}_tinyimgnet
    echo -n ','
    python read_acc.py elm${m}_tinyimgnet
    echo -n '\n'
done

### GDUMB ######
# CIFAR
i=0
for m in 10 50 100 500 1000 5000
do 
    i=$((i+1))
    echo -n $i,CIFAR10,GDumb,32x32,$m,
    python read_time.py gdumb${m}_cifar
    echo -n ','
    python read_acc.py gdumb${m}_cifar
    echo -n '\n'
done


# CIFAR100
i=0
for m in 10 50 100 500 1000 5000
do 
    i=$((i+1))
    echo -n $i,CIFAR100,GDumb,32x32,$m,
    python read_time.py gdumb${m}_cifar100
    echo -n ','
    python read_acc.py gdumb${m}_cifar100
    echo -n '\n'
done

# IMGNET
i=0
for m in 10 50 100 500 1000 1250
do 
    i=$((i+1))
    echo -n $i,ImageNet100,GDumb,64x64,$m,
    python read_time.py gdumb${m}_tinyimgnet
    echo -n ','
    python read_acc.py gdumb${m}_tinyimgnet
    echo -n '\n'
done

# Core
i=0
for m in 10 50 100 312
do 
    i=$((i+1))
    echo -n $i,Core50,GDumb,128x128,$m,
    python read_time.py gdumb${m}_core50
    echo -n ','
    python read_acc.py gdumb${m}_core50
    echo -n '\n'
done

#### RESIZE ####

# MNIST
i=0
for m in 10 50 100 500 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000
do 
    i=$((i+1))
    echo -n $i,MNIST,Resize,8x8,$m,
    python read_time.py resize${m}_mnist
    echo -n ','
    python read_acc.py resize${m}_mnist
    echo -n '\n'
done

# CIFAR10
i=0
for m in 10 50 100 500 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000
do 
    i=$((i+1))
    echo -n $i,CIFAR10,Resize,8x8,$m,
    python read_time.py resize${m}_cifar10
    echo -n ','
    python read_acc.py resize${m}_cifar10
    echo -n '\n'
done

# CIFAR100
i=0
for m in 10 50 100 500 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000
do 
    i=$((i+1))
    echo -n $i,CIFAR100,Resize,8x8,$m,
    python read_time.py resize${m}_cifar100
    echo -n ','
    python read_acc.py resize${m}_cifar100
    echo -n '\n'
done

# CORE
i=0
for m in 10 50 100 500 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000
do 
    i=$((i+1))
    echo -n $i,Core50,Resize,8x8,$m,
    python read_time.py resize${m}_core50
    echo -n ','
    python read_acc.py resize${m}_core50
    echo -n '\n'
done

# Imgnet
i=0
for m in 10 50 100 500 1000 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000
do 
    i=$((i+1))
    echo -n $i,ImageNet100,Resize,8x8,$m,
    python read_time.py resize${m}_tinyimgnet
    echo -n ','
    python read_acc.py resize${m}_tinyimgnet
    echo -n '\n'
done

