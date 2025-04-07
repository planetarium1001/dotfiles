#!/usr/bin/bash
echo -e "\e[31m==> Install basic system \e[0m"

pacstrap /mnt $PACSTRAP_PKG $SYS_PACKAGES $UCODE --noconfirm
