echo -e "\e[31m ====================== \e[0m"
echo -e "\e[31m ==> Switch to user <== \e[0m"
echo -e "\e[31m ====================== \e[0m"

echo -e "\e[31m ==> Config user home \e[0m"

ya pack -a yazi-rs/plugins:git
ya pack -a yazi-rs/plugins:chmod
ya pack -a yazi-rs/plugins:full-border
ya pack -a yazi-rs/plugins:smart-enter
ya pack -a yazi-rs/plugins:vcs-files
ya pack -a yazi-rs/plugins:mount
ya pack -a Rolv-Apneseth/starship
mkdir -p ~/Desktop
mkdir -p ~/Documents
mkdir -p ~/Downloads
mkdir -p ~/Music
mkdir -p ~/Pictures
mkdir -p ~/Videos
mkdir -p ~/Downloads/Documents
mkdir -p ~/Downloads/Music
mkdir -p ~/Downloads/Videos
mkdir -p ~/Downloads/Programs
mkdir -p ~/.scripts/
cd ~/Downloads/Documents/
git clone https://github.com/planetarium1001/dotfiles.git
cd dotfiles
cp -r ./config/* ~/.config/
cp -r ./scripts/* ~/.scripts/
sed -i "s/# === Set Video Card === #/##" ~/.config/hypr/config/environment.conf
sed -i "s/env = AQ_DRM_DEVICES,/dev/dri/card2/##" ~/.config/hypr/config/environment.conf
fc-cache -r
