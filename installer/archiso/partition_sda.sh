#!/usr/bin/bash
echo -e "\e[31m ==>Partition the disks\e[0m"
echo "g
n


+512M
n



w
" | fdisk /dev/sda

echo -e "\e[31m ==> Format the partitions \e[0m"
mkfs.fat -F32 /dev/sda1
mkfs.btrfs -f -L ArchLinux /dev/sda2

echo -e "\e[31m ==> Create subvolume \e[0m"
mount -t btrfs -o compress=zstd /dev/sda2 /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
umount /mnt

echo -e "\e[31m ==> Mount partitions \e[0m"
mount -t btrfs -o subvol=/@,compress=zstd /dev/sda2 /mnt
mkdir /mnt/home
mount -t btrfs -o subvol=/@home,compress=zstd /dev/sda2 /mnt/home
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot
