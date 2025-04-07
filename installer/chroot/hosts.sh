#!/usr/bin/bash
echo -e "\e[31m==> Config hosts \e[0m"
echo "$HOSTNAME" > /etc/hostname
echo "127.0.0.1   localhost\n" > /etc/hosts
echo "::1         localhost\n" >> /etc/hosts
echo "127.0.1.1   myarch.localdomain $HOSTNAME" >> /etc/hostname
