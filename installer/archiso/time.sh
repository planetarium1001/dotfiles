#!/usr/bin/bash
echo -e "\e[31m==> Update the system clock\e[0m"
timedatectl set-ntp true
timedatectl status
