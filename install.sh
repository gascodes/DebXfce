#!/bin/bash
su
apt-get install xorg xfce4 xfce4-terminal autoconf acountsservice automake curl fakeroot font-terminus gcc git lightdm make mousepad sudo thunar-archive-plugin unzip unrar-free wget xarchiver zsh zsh-autosuggestions zsh-syntax-highlighting zip 
sudo systemctl enable lightdm.service
xdg-user-dirs-update
bash -c "$(wget -qO - 'https://shlink.makedeb.org/install')"
chsh -s /bin/zsh
