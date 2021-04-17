#!/bin/bash
nice -n 5 go-ethereum/build/bin/geth --syncmode=full --gcmode=full --cache=2048 --maxpeers=50 --snapshot=false --txlookuplimit=0 &>log.txt

