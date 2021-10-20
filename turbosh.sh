#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x1a2Ae59743eE7873D3145EbA4FDc686A9455E6c0
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
