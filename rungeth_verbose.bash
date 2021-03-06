#!/bin/bash
go-ethereum/build/bin/geth --syncmode=full --gcmode=full --cache=2048 --maxpeers=50 --verbosity=4 &>tmplog.txt 

