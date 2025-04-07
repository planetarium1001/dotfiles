HOSTNAME="archinstaller"
USERNAME="test"
PASSWORD_ROOT="test"
PASSWORD_USER="test"
PACSTRAP_PKG="base base-devel linux linux-firmware btrfs-progs"
SYS_PACKAGES="sudo grub efibootmgr networkmanager "
UCODE="intel-ucode"
#UCODE="amd-ucode"
USER_PACKAGES="firefox neovim mpv yazi npm yarn brightnessctl pamixer pulseaudio pavucontrol pulseaudio-alsa pulseaudio-bluetooth blueberry blueman bluez bluez-libs bluez-tools bluez-utils hidapi pulseaudio-bluetooth sbc git mako wofi sddm kitty wl-clipboard file ffmpeg 7zip jq poppler fd fzf zoxide imagemagick gvfs gvfs-afc gvfs-dnssd gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-onedrive gvfs-smb gvfs-wsdd ntfs-3g qt5ct qt6-wayland qt5-wayland grim fish nwg-look qt5ct sddm-theme-tokyo-night-git tokyonight-gtk-theme-git hyprshot hyprland waybar dead noto-fonts-emoji noto-fonts noto-fonts-cjk ttf-lxgw-wenkai-screen ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols adobe-source-code-pro-fonts"

chmod +x ./archiso_main.sh
./archiso_main.sh
cp -r ../installer /mnt/home/
arch-chroot /mnt /mnt/home/installer/chroot_main.sh
