#!/bin/bash
systemctl --user stop geth.service
systemctl --user disable geth.service
systemctl --user daemon-reload
