#!/usr/bin/bash
cd /home/installer
chmod +x ./chroot/*
chmod +x ./settings.sh
./settings.sh

cat ./settings.sh > tmp.sh && cat ./chroot/hosts.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./chroot/locale.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./chroot/users.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./chroot/grub.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./chroot/packages.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh

cat ./settings.sh > tmp.sh && echo "cp -r /home/installer /home/$USERNAME/Downloads/Programs/installer" >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && echo "su $USERNAME -c 'bash /home/$USERNAME/Downloads/Programs/installer/user_main.sh'" >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
