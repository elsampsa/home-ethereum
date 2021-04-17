#!/bin/bash
#echo stopping geth
#systemctl --user stop geth.service
#echo get stopped, starting rsync
rsync -v -r -u --delete .ethereum /media/PUT/HERE/YOUR/HDD/ADDRESS
#systemctl --user start geth.service
