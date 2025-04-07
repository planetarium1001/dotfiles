echo -e "\e[31m ==>Grub install \e[0m"
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=ArchLinux --removable
grub-mkconfig -o /boot/grub/grub.cfg
