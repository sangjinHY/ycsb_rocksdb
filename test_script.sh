




a=workloada 
b=workloadb
c=workloadc
d=workloadd
e=workloade
f=workloadf


echo "start rocksdb ycsb test"
sudo rm /tmp/ycsb-rocksdb-data/*
sudo rm ./*_load.txt
sudo rm ./*_run.txt


sudo ./bin/ycsb load rocksdb -s -P workloads/workloada -P large.dat -p rocksdb.dir=/tmp/ycsb-rocksdb-data >workloada_load.txt

sudo ./bin/ycsb run rocksdb -s -P workloads/workloada -p rocksdb.dir=/tmp/ycsb-rocksdb-data>>workloada_run.txt

sudo rm /tmp/ycsb-rocksdb-data/*
echo "done a test"

sudo ./bin/ycsb load rocksdb -s -P workloads/workloadb -P large.dat -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloadb_load.txt

sudo ./bin/ycsb run rocksdb -s -P workloads/workloadb -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloadb_run.txt

sudo rm /tmp/ycsb-rocksdb-data/*
echo "done b test"

sudo ./bin/ycsb load rocksdb -s -P workloads/workloadc -P large.dat -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloadc_load.txt

sudo ./bin/ycsb run rocksdb -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloadc_run.txt

sudo rm /tmp/ycsb-rocksdb-data/*
echo "done c test"

sudo ./bin/ycsb load rocksdb -s -P workloads/workloadd -P large.dat -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloadd_load.txt

sudo ./bin/ycsb run rocksdb -s -P workloads/workloadd -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloadd_run.txt

sudo rm /tmp/ycsb-rocksdb-data/*
echo "done d test"

sudo ./bin/ycsb load rocksdb -s -P workloads/workloade -P large.dat -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloade_load.txt

sudo ./bin/ycsb run rocksdb -s -P workloads/workloade -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloade_run.txt

sudo rm /tmp/ycsb-rocksdb-data/*
echo "done e test"

sudo ./bin/ycsb load rocksdb -s -P workloads/workloadf -P large.dat -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloadf_load.txt

sudo ./bin/ycsb run rocksdb -s -P workloads/workloadf -p rocksdb.dir=/tmp/ycsb-rocksdb-data > workloadf_run.txt

sudo rm /tmp/ycsb-rocksdb-data/*
echo "done f test"

echo "done rocksdb ycsb test"

