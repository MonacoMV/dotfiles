#!/bin/bash

echo "====== Refreshing repos ======"
sudo pacman -Syy --noconfirm --needed

# Installing Packages listed in PACKAGES variable

echo "Installing Packages"

PACKAGES="papirus-icon-theme alacritty bspwm sxhkd rofi feh vim xorg-xinit xorg-server xorg-xrandr ttf-font-awesome polybar adobe-source-code-pro-fonts vim python3 xorg-xset lxappearance pcmanfm"

sudo pacman -S --noconfirm --needed $PACKAGES

# Command just in case something fails

set -o errexit
exit 0
