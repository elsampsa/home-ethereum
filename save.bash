#!/bin/bash
##saves the blockchain and your keystore using rsync
##uncomment some lines if you're using get as a daemon
#echo stopping geth
#systemctl --user stop geth.service
#echo get stopped, starting rsync
##uncomment the following line if your "ancient" part of the blockchain is somewhere else (in this example at "/mnt/hdd/ancient")
# echo "COPYING ANCIENT BLOCKCHAIN"
#rsync -v -r -u --delete --info=progress2 --info=name0 /mnt/hdd/ancient /media/$USER/[PUT HERE YOUR HDDS UUID]/
echo "COPYING THE BLOCKCHAIN"
rsync -v -r -u --delete --info=progress2 --info=name0 .ethereum/geth /media/$USER/[PUT HERE YOUR HDDS UUID]/
echo "COPYING KEYSTORE"
rsync -v -r -u .ethereum/keystore /media/$USER/[PUT HERE YOUR HDDS UUID]/
#systemctl --user start geth.service
