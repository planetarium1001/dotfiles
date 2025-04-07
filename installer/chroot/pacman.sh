#!/usr/bin/bash
echo -e "\e[31m==> Change the mirrorlist and pacman config\e[0m"
cp /home/installer/config/pacman/pacman.conf /etc/pacman.conf
cp /home/installer/config/pacman/mirrorlist /etc/mirrorlist
