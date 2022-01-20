#!/bin/bash
## (1) it's a good idea to distribute the "ancient" datadir to another device to save diskspace.  The rumour says, that device can
## even be a hdd (instead of an ssd)
## (2) snap sync is amazing & blazing fast!
## (3) some usefull switches: --verbosity=4, 

# nice -n 5 go-ethereum/build/bin/geth --datadir.ancient=/mnt/hdd/ancient --cache=2048 --maxpeers=50 --syncmode=snap &>log.txt
nice -n 5 go-ethereum/build/bin/geth --cache=2048 --maxpeers=50 --syncmode=snap &>log.txt
