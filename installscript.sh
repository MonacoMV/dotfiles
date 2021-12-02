#!/bin/bash

log_file=~/install_progress_log.txt

echo "====== Refreshing repos ======"
sudo pacman -Syy

sudo pacman -S --noconfirm alacritty --needed
if type -p alacritty > /dev/null; then
		echo "alacritty installed" >> $log_file
else
		echo "alacritty failed to isntall" >> $log_file

sudo pacman -S --noconfirm bspwm --needed
if type -p bspwm > /dev/null; then
		echo "bspwm installed" >> $log_file
else
		echo "bspwm failed to isntall" >> $log_file
fi

sudo pacman -S --noconfirm sxhkd --needed
if type -p sxhkd > /dev/null; then
		echo "sxhkd installed" >> $log_file
else
		echo "sxhkd failed to install" >> $log_file
fi

sudo pacman -S --noconfirm rofi --needed
if type -p rofi > /dev/null; then
		echo "rofi installed" >> $log_file
else
		echo "rofi failed to isntall" >> $log_file
fi

sudo pacman -S --noconfirm feh --needed
if type -p feh > /dev/null; then
		echo "feh installed" >> $log_file
else
		echo "feh failed to install" >> $log_file
fi

sudo pacman -S --noconfirm vim --needed
if type -p vim > /dev/null; then
		echo "vim installed" >> $log_file
else
		echo "vim failed to install"
fi

sudo pacman -S --noconfirm xorg-xinit xorg-server xorg-xrandr --needed
echo "xorg installed" >> $log_file

sudo pacman -S --noconfirm ttf-font-awesome --needed
echo "font-awesome installed" >> $log_file


sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm --needed
echo "paru installed" >> $log_file

paru -S polybar --needed --noconfirm
if type -p polybar > /dev/null; then
		echo "polybar installed" >> $log_file
else
		echo "polybar failed to install"
fi

paru -S tangram --needed --noconfirm
if type -p tangram > /dev/null; then
		echo "tangram installed" >> $log_file
else
		echo "tangram failed to install"
fi

echo
echo "====== Summary ======"
cat $log_file
echo
rm $log_file
