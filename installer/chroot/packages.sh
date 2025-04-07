#!/usr/bin/bash
echo -e "\e[31m==> Install user packages \e[0m"
pacman -Sy archlinux-keyring archlinuxcn-keyring --noconfirm
pacman -S yay --noconfirm
yay -S $USER_PACKAGES --noconfirm
systemctl enable NetworkManager
systemctl enable dead
