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

sudo pacman -S --noconfirm polybar --needed
if type -p polybar > /dev/null; then
		echo "polybar installed" >> $log_file
else
		echo "polybar failed to install"
fi

sudo pacman -S --noconfirm xorg-xinit xorg-server xorg-xrandr --needed
echo "xorg installed" >> $log_file

sudo pacman -S --noconfirm ttf-font-awesome --needed
echo "font-awesome installed" >> $log_file

echo
echo "====== Summary ======"
cat $log_file
echo
rm $log_file
