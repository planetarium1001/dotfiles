#!/usr/bin/bash
echo -e "\e[31m==> Change the mirrorlist and pacman config\e[0m"
cp ./config/pacman.conf /etc/pacman.conf
cp ./config/mirrorlist /etc/mirrorlist
