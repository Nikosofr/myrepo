#!/bin/bash

echo "==================================================="
echo "           update system & install need pacage     "
echo "==================================================="
sudo pacman -Syu

sudo pacman -S firefox waybar wayland kitty base-devel wget curl nano nvim fastfetch

sudo pacman -S sddm 

sudo systemctl enable sddm

echo "==================================================="
echo "                   yay install                     "
echo "==================================================="

git clone https://aur.archlinux.org/yay.git

cd yay 

makepkg -si

yay -version

echo "Successful"

echo "==================================================="
echo "                 make folder for my work           "
echo "==================================================="
mkdir workspace
mkdir ~/workspace/file-sh

echo "==================================================="
echo "           install tool for coding                 "
echo "==================================================="

mkdir ~/workspace/devtool
cd ~/workspace/devtool/
wget https://api2.cursor.sh/updates/download/golden/linux-x64/cursor/2.1
chmod +x Cursor-2.1.40-x86.64.AppImage


yay -S go python cython rust postgresql micro gcc metasploit openssh 

echo "Successful"

echo "==================================================="
echo "           install beautiful for my desk           "
echo "==================================================="

yay -S cava peaclock btop cmatrix swww 

echo "==================================================="
echo "           install hyprcomponent                   "
echo "==================================================="

sudo pacman -S hyprpaper
yay -S hyprlock-git
