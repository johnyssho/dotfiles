#!/bin/bash

sudo pacman -S --needed - <pkglist.txt
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S - pkglist_aur.txt
sudo usermod --shell /bin/zsh jh
cp .zshrc ~/
mv config/* ~/.config/
mkdir -p ~/.local/src
cp -r src/* ~/.local/src/
cd ~/.local/src
#sudo ln -s ~/.local/bin/* /usr/local/bin/
