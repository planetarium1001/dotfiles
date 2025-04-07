#!/usr/bin/bash
echo -e "\e[31m==> Config localtime and lang \e[0m"
hwclock --systohc
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo 'LANG=en_US.UTF-8'  > /etc/locale.conf
cp ./config/locale/locale.gen /etc/locale.gen
locale-gen
