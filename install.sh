#!/bin/bash

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
cd ~/dotfiles
mv -f .config/* ~/.config
mv -f .oh-my-zsh/ ~/
mv -f .* ~/

cd ~/.config/Suckless/dwm
sudo make clean install
cd ../dmenu
sudo make clean install
cd ../slstatus
sudo make clean install
cd ../slock
sudo make clean install

cd ~
echo "Installing Starship Prompt"
curl -sS https://starship.rs/install.sh | sh


echo "Installation complete"

cd ~
