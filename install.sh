#!/bin/bash
set -euo pipefall

echo "Installing base development tools..."
sudo pacman -S --needed git base-devel --noconfirm

#Install yay
echo "Installing yay from aur..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..
rm -rf yay

#Install packages
echo "Cloning dotfiles repository..."
git clone https://github.com/wllnut/dotfiles/
cd dotfiles

echo "Installing packages..."
sudo pacman -S - --noconfirm < pkglist.txt

echo "Installing aur packages..."
yay -S - --noconfirm < pkglist_aur.txt

rm -f pkglist.txt pkglist_aur.txt

#Moving config files to destination
echo "Moving config files to home directory..."
mv -f * ~

echo "Installation complete"

cd ~
