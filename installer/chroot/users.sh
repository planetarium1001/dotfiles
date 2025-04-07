echo -e "\e[31m==>Config users and password \e[0m"
echo \"root:$PASSWORD_ROOT\" | chpasswd 
useradd -m -G wheel $USERNAME
echo \"$USERNAME:$PASSWORD_USER\" | chpasswd 
sed -i 's/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
