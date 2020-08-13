#!/bin/bash
encfs ~/.crypt ~/crypt
read -p "press any key to unmount the encrypted FS"
fusermount -u ~/crypt
echo "OK!"
