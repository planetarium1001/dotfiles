#!/usr/bin/bash
cd /home/installer
chmod +x ./chroot/*
chmod +x ./settings.sh
./settings.sh

./chroot/hosts.sh
./chroot/locale.sh
./chroot/users.sh
./chroot/grub.sh
./chroot/packages.sh

cp -r /home/installer /home/$USERNAME/Downloads/Programs/installer
su $USERNAME -c "bash /home/$USERNAME/Downloads/Programs/installer/user_main.sh"
