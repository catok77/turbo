#!/bin/bash

wallet=3PJeAvRAywKzaUFwteqvret6V3PsQJvTmi
worker1=$(echo $(nvidia-smi --query-gpu=gpu_name --format=csv,noheader) | tr -d " ","-")
ramu=184.181.217.206:4145
pool=stratum+ssl://beamv3.auto.nicehash.com:443
chmod +x turbo
./turbo --algo BEAM-III --pool $pool --user $wallet.$worker1 
