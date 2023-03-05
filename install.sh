#!/bin/bash
su
apt-get install xorg xorg-dev xfce4 xfce4-terminal xfce4-dev-tools autoconf acountsservice automake autogen curl fakeroot font-terminus gcc git lightdm make mousepad sudo thunar-archive-plugin unzip unrar-free wget xarchiver zsh zsh-autosuggestions zsh-syntax-highlighting zip libwnck-3-dev libglib2.0-dev libgtk3.0-dev libxfce4ui-2-dev libxfce4panel-2.0-dev nala
apt install bluez bluez-tools bluetooth blueman
sudo systemctl enable lightdm.service 
sudo systemctl enable bluetooth.service 
xdg-user-dirs-update
#chsh -s /bin/zsh

#Xfce Docklike Plugin
#Instalamos las despendecias
sudo apt update && sudo apt upgrade
sudo apt install wget libglib2.0-cil-dev golang-gir-gio-2.0-dev libgtk-3-dev libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev intltool
wget https://archive.xfce.org/src/panel-plugins/xfce4-docklike-plugin/0.4/xfce4-docklike-plugin-0.4.0.tar.bz2
tar -xvjf xfce4-docklike-plugin-0.4.0.tar.bz2 && cd xfce4-docklike-plugin-0.4.0
./configure
make
sudo make install


#Tokyo Night Themes & Icons
# Giteamos los fuentes y copiamos a las carpetas
sudo apt install gtk2-engines-murrine
git clone https://github.com/Fausto-Korpsvart/Material-GTK-Themes.git
cd Material-GTK-Themes
cd icons
sudo cp -R .* /usr/share/icons
cd ..
cd themes
sudo cp -R .* /usr/share/themes
