cat ./settings.sh > tmp_0.sh
cat ./settings.sh > tmp_1.sh
cat ./settings.sh > tmp_2.sh
cat ./settings.sh > tmp_3.sh
cat ./system_installer.sh >> tmp_0.sh
cat ./user_install.sh >> tmp_1.sh
echo ""
cat ./su_installer.sh >> tmp_2.sh
echo "mv ./tmp_1.sh /mnt/home/tmp_1.sh" >> tmp_0.sh
echo "mv ./tmp_2.sh /mnt/home/tmp_2.sh" >> tmp_0.sh
echo "mv ./tmp_3.sh /mnt/home/tmp_3.sh" >> tmp_0.sh
echo "arch-chroot /mnt /mnt/home/tmp_1.sh" >> tmp_0.sh
