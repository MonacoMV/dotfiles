#!/bin/bash

echo "====== Refreshing repos ======"
sudo pacman -Syy --noconfirm --needed

# Installing Packages listed in PACKAGES variable

echo "Installing Packages"

PACKAGES(){
	alacritty
	bspwm
	sxhkd
	rofi
	feh
	vim
	xorg-xinit
	xorg-server
	xorg-xrandr
	ttf-font-awesome
}

sudo pacman -S --noconfirm --needed $PACKAGES

# Installing Paru

echo "Installing Paru"

sudo pacman -S --noconfirm --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm --needed

# Installing Packages listed in AUR_PACKAGES

echo "Installing AUR Packages"

AUR_PACKAGES(){
	polybar
	tangram
	pfetch
}

paru -S --needed --noconfirm $AUR_PACKAGES

# Command just in case something fails

set -o errexit
exit 0
