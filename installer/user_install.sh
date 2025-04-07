echo -e "\e[31m ============================= \e[0m"
echo -e "\e[31m ==> Switch to arch-chroot <== \e[0m"
echo -e "\e[31m ============================= \e[0m"

echo -e "\e[31m ==> Config hosts \e[0m"
echo "$HOSTNAME" > /etc/hostname
echo "127.0.0.1   localhost\n" > /etc/hosts
echo "::1         localhost\n" >> /etc/hosts
echo "127.0.1.1   myarch.localdomain $HOSTNAME" >> /etc/hostname

echo -e "\e[31m ==> Config localtime and lang \e[0m"
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc
echo 'LANG=en_US.UTF-8'  > /etc/locale.conf
sed -i "s/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8" /etc/locale.gen
sed -i "s/#zh_CN.GB18030/zh_CN.GB18030" /etc/locale.gen
sed -i "s/#zh_CN.GBK/zh_CN.GBK" /etc/locale.gen
sed -i "s/#zh_CN.UTF-8/zh_CN.UTF-8" /etc/locale.gen
sed -i "s/#zh_CN/zh_CN.GB2312" /etc/locale.gen
locale-gen

echo -e "\e[31m ==> Config users and password \e[0m"
echo \"root:$PASSWORD_ROOT\" | chpasswd 
useradd -m -G wheel $USERNAME
echo \"$USERNAME:$PASSWORD_USER\" | chpasswd 
sed -i 's/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers

echo -e "\e[31m ==> Grub install \e[0m"
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet"/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=5 nowatchdog"' /etc/default/grub
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=ArchLinux --removable
grub-mkconfig -o /boot/grub/grub.cfg

echo -e "\e[31m ==> Install user packages \e[0m"
pacman -Sy yay --noconfirm
yay -S $USER_PACKAGES --noconfirm
systemctl enable dead
