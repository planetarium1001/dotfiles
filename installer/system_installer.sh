echo -e "\e[31m ==> Stop and disable reflector service \e[0m"
systemctl disable reflector.service
systemctl stop reflector.service

echo -e "\e[31m ==> Update the system clock \e[0m"
timedatectl set-ntp true
timedatectl status

echo -e "\e[31m ==> Change the mirrorlist and pacman config \e[0m"
cp ./pacman.conf /etc/pacman.conf
cp ./mirrorlist /etc/mirrorlist

echo -e "\e[31m ==> Partition the disks \e[0m"
echo "label: gpt" | sfdisk /dev/nvme0n1
echo ",512M,ef,*" | sfdisk /dev/nvme0n1
echo ",,83" | sfdisk --append /dev/nvme0n1

echo -e "\e[31m ==> Format the partitions \e[0m"
mkfs.fat -F32 /dev/nvme0n1p1
mkfs.btrfs -L ArchLinux /dev/nvme0n1p2

echo -e "\e[31m ==> Create subvolume \e[0m"
mount -t btrfs -o compress=zstd /dev/nvme0n1p2 /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
umount /mnt

echo -e "\e[31m ==> Mount partitions \e[0m"
mount -t btrfs -o subvol=/@,compress=zstd /dev/nvme0n1p2 /mnt
mkdir /mnt/home
mount -t btrfs -o subvol=/@home,compress=zstd /dev/nvme0n1p2 /mnt/home
mkdir -p /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

echo -e "\e[31m ==> Install basic system \e[0m"
pacstrap /mnt $PACSTRAP_PKG $SYS_PACKAGES $UCODE --noconfirm

echo -e "\e[31m ==> Genfstab \e[0m"
genfstab -U /mnt > /mnt/etc/fstab
