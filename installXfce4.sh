#!/bin/bash
su
apt-get install xorg xorg-dev xfce4 xfce4-terminal xfce4-dev-tools autoconf acountsservice automake autogen curl fakeroot font-terminus gcc git lightdm make mousepad sudo thunar-archive-plugin unzip unrar-free wget xarchiver zsh zsh-autosuggestions zsh-syntax-highlighting zip libwnck-3-dev libglib2.0-dev libgtk3.0-dev libxfce4ui-2-dev libxfce4panel-2.0-dev nala fonts-firacode gtk2-engines-murrine
apt install bluez bluez-tools bluetooth blueman wget libglib2.0-cil-dev golang-gir-gio-2.0-dev libgtk-3-dev libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev intltool
sudo systemctl enable lightdm.service 
sudo systemctl enable bluetooth.service 
xdg-user-dirs-update
chsh -s /bin/zsh

