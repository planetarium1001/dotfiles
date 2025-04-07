#!/usr/bin/bash
echo -e "\e[31m==>Config users and password \e[0m"
echo "$PASSWORD_ROOT" | passwd --stdin root
useradd -m -G wheel $USERNAME
echo "$PASSWORD_USER" | passwd --stdin "$USERNAME"
sed -i 's/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
