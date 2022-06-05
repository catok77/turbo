#!/bin/bash

wallet=0x6234e4d2d89efcea326e398ceb6bc96a26351250   
worker=tattat
pool=asia1.ethermine.org:4444
chmod +x turbo
 ./turbo --algo ETHASH --pool $pool --user $wallet.$worker --tls=0 
