#!/bin/bash

sudo sed -i 's/bullseye/bookworm/g' /etc/apt/sources.list
sudo apt update
sudo apt upgrade
sudo apt-get install xorg xorg-dev xfce4 xfce4-terminal xfce4-dev-tools autoconf accountsservice automake autogen curl fakeroot gcc git lightdm make mousepad sudo thunar-archive-plugin unzip unrar-free wget xarchiver zsh zsh-autosuggestions zsh-syntax-highlighting zip nala fonts-firacode gtk2-engines-murrine gvfs pulseaudio curl bluez bluez-tools bluetooth blueman wget libglib2.0-cil-dev golang-gir-gio-2.0-dev libgtk-3-dev libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev intltool lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings 
sudo systemctl enable lightdm.service 
sudo systemctl enable bluetooth.service 
xdg-user-dirs-update
chsh -s /bin/zsh

