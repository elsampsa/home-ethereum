#!/bin/bash
sudo loginctl enable-linger $USER
# sudo ln -s $PWD/geth.service /etc/systemd/user/
# WARNING!  be sure there is not a copy in /etc/systemd/user/geth.service
cp $PWD/geth.service $HOME/.config/systemd/user/
systemctl --user enable geth.service
systemctl --user start geth.service
systemctl --user status geth.service
