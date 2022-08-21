#!/bin/bash
su
apt-get install xorg xorg-dev xfce4 xfce4-terminal xfce4-dev-tools autoconf acountsservice automake autogen curl fakeroot font-terminus gcc git lightdm make mousepad sudo thunar-archive-plugin unzip unrar-free wget xarchiver zsh zsh-autosuggestions zsh-syntax-highlighting zip libwnck-3-dev libglib2.0-dev libgtk3.0-dev libxfce4ui-2-dev libxfce4panel-2.0-dev
apt install bluez bluez-tools bluetooth blueman
sudo systemctl enable lightdm.service 
xdg-user-dirs-update
bash -c "$(wget -qO - 'https://shlink.makedeb.org/install')"
chsh -s /bin/zsh
