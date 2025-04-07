#!/usr/bin/bash
echo -e "\e[31m==> Change the mirrorlist and pacman config\e[0m"
cp /root/dotfiles/installer/config/pacman/pacman.conf /etc/pacman.conf
cp /root/dotfiles/installer/config/pacman/mirrorlist /etc/mirrorlist
