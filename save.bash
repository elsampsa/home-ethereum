#!/bin/bash
echo stopping geth
systemctl --user stop geth.service
echo get stopped, starting rsync
cd $HOME
rsync -v -r -u --delete .ethereum /media/$USER/[PUT HERE YOUR HDDS UUID]/
systemctl --user start geth.service
