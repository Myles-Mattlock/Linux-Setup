#!/bin/bash

# Change Debian to SID Branch
#cp /etc/apt/sources.list /etc/apt/sources.list.bak
#cp sources.list /etc/apt/sources.list 

# Update packages list
sudo apt update

# Add base packages
sudo apt install unzip gwenview okular ark picom neofetch git htop vlc rhythmbox kodi pulseeffects pavucontrol nemo papirus-icon-theme fonts-noto-color-emoji fonts-firacode fonts-font-awesome libqt5svg5 qml-module-qtquick-controls

# Download Nordic Theme
cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git

# Make Theme folders
mkdir -p ~/.themes ~/.fonts

# Fira Code Nerd Font variant needed
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip -d ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
unzip Meslo.zip -d ~/.fonts   
fc-cache -vf

#Ms-fonts
sudo apt install ttf-mscorefonts-installer

# Layan Cursors
cd "$HOME/build"
git clone https://github.com/vinceliuice/Layan-cursors
cd Layan-cursors
sudo ./install.sh
