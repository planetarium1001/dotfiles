#!/usr/bin/bash
echo -e "\e[31m ==>Copy dotfiles\e[0m"
cd ~/Downloads/Documents/
git clone https://github.com/planetarium1001/dotfiles.git
cd dotfiles
cp -r ./config/* ~/.config/
cp -r ./scripts/* ~/.scripts/
fc-cache -r
