#!/bin/bash

log_file=~/install_progress_log.txt

echo "====== Refreshing repos ======"
sudo pacman -Syy

sudo pacman -S --noconfirm alacritty
if type -p alacritty > /dev/null; then
		echo "alacritty installed" >> $log_file
else
		echo "alacritty failed to isntall" >> $log_file

sudo pacman -S zsh
if type -p zsh > /dev/null; then
		echo "zsh installed" >> $log_file
else
		echo "alacritty failed to isntall" >> $log_file

fi

sudo pacman -S --noconfirm bspwm
if type -p bspwm > /dev/null; then
		echo "bspwm installed" >> $log_file
else
		echo "bspwm failed to isntall" >> $log_file
fi

sudo pacman -S --noconfirm sxhkd
if type -p sxhkd > /dev/null; then
		echo "sxhkd installed" >> $log_file
else
		echo "sxhkd failed to install" >> $log_file
fi

sudo pacman -S --noconfirm rofi
if type -p rofi > /dev/null; then
		echo "rofi installed" >> $log_file
else
		echo "rofi failed to isntall" >> $log_file
fi

sudo pacman -S --noconfirm htop
if type -p htop > /dev/null; then
		echo "htop installed" >> $log_file
else
		echo "htop failed to install" >> $log_file
fi

sudo pacman -S --noconfirm feh
if type -p feh > /dev/null; then
		echo "feh installed" >> $log_file
else
		echo "feh failed to install" >> $log_file
fi

sudo pacman -S --noconfirm vim
if type -p vim > /dev/null; then
		echo "vim installed" >> $log_file
else
		echo "vim failed to install"
fi

git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si --noconfirm
if type -p polybar > /dev/null; then
		echo "polybar installed" >> $log_file
else
		echo "polybar failed to install"
fi

sudo pacman -S --noconfirm xorg
echo "xorg installed" >> $log_file

sudo pacman -S --noconfirm ttf-font-awesome
echo "font-awesome installed" >> $log_file

git clone https://aur.archlinux.org/pfetch.git
cd pfetch
makepkg -si --noconfirm
if type -p pfetch > /dev/null; then
		echo "pfetch installed" >> $log_file
else
		echo "pfetch failed to isntall" >> $log_file
fi

echo
echo "====== Summary ======"
cat $log_file
echo
rm $log_file
