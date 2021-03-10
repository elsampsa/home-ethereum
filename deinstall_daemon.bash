#!/bin/bash
systemctl --user stop geth.service
systemctl --user disable geth.service
sudo rm /etc/systemd/user/geth.service
systemctl --user daemon-reload
