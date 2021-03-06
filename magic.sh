#!/bin/bash

sudo pacman -S --needed - <pkglist.txt
sudo pacman -S openssh sof-firmware
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git 
cd yay
makepkg -si
cd ..
yay -S --needed - <pkglist_aur.txt
sudo usermod --shell /bin/zsh jh
cp .zshrc ~/
cd
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
mv zsh-syntax-highlighting .zsh-syntax-highlighting
cd dotfiles
sudo cp -r pix ~/
sudo cp .xinitrc ~/
sudo cp .bck ~/
sudo make install
cd ~/dotfiles
cp -r config/* ~/.config/
mkdir -p ~/.local/src
sudo cp -r src/* ~/.local/src/
cd ~/.local/src
cd devour
sudo make install
cd ..
cd dmenu
sudo make install
cd ..
cd dwm
sudo make install
cd ..
cd dwmblocks
sudo make install
cd ..
cd st
sudo make install
cd ..
cd tty-clock
sudo make install
cd ..
cd ytfzf
sudo make install
cd ~/dotfiles
sudo mkdir ~/.local/bin/
sudo cp bin/* ~/.local/bin/
sudo ln -s ~/.local/bin/* /usr/local/bin/
cd
sudo rm -r dotfiles
echo "Now do -sudo visudo- and append jh ALL=NOPASSWD: /usr/bin/make clean install"
