echo -e "\e[31m ==> Stop and disable reflector service \e[0m"
systemctl disable reflector.service
systemctl stop reflector.service



echo -e "\e[31m ==> Partition the disks \e[0m"
echo "label: gpt" | sfdisk /dev/nvme0n1
echo ",512M,ef,*" | sfdisk /dev/nvme0n1
echo ",,83" | sfdisk --append /dev/nvme0n1
echo -e "\e[31m ==> Format the partitions \e[0m"
