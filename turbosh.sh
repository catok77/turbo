#!/bin/bash

wallet=3PJeAvRAywKzaUFwteqvret6V3PsQJvTmi
worker1=$(echo $(nvidia-smi --query-gpu=gpu_name --format=csv,noheader) | tr -d " ","-")
ramu=184.181.217.206:4145
pool=stratum+tcp://daggerhashimoto.auto.nicehash.com:9200
chmod +x turbo
./turbo --algo ETHASH  --pool $pool --user $wallet.$worker1 --tls=0 --ethstratum ETHV1
