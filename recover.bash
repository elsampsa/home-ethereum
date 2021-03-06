#!/bin/bash
echo stopping geth
systemctl --user stop geth.service
echo get stopped, recovering .ethereum directory from hdd
cd $HOME
rsync -v -r -u --delete /media/$USER/[PUT HERE YOUR HDDS UUID]/.ethereum .
