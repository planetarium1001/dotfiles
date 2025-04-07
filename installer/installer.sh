cd /root/dotfiles/installer
chmod +x ./archiso_main.sh
chmod +x ./settings.sh
./settings.sh
./archiso_main.sh
cp -r ../installer /mnt/home/
arch-chroot /mnt /usr/bin/bash /home/installer/chroot_main.sh
