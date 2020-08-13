#!/bin/bash
sudo loginctl enable-linger $USER
sudo ln -s $PWD/geth.service /etc/systemd/user/
systemctl --user enable geth.service
systemctl --user start geth.service
systemctl --user status geth.service
 
