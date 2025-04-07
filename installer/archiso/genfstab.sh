#!/usr/bin/bash
echo -e "\e[31m==> Genfstab\e[0m"
genfstab -U /mnt > /mnt/etc/fstab
