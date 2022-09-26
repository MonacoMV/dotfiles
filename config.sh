#!/bin/bash

dotfiles_dir=~/dotfiles

sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.config > /dev/null 2>&1
sudo rm -rf ~/.xinitrc > /dev/null 2>&1
sudo rm -rf ~/wallpaper > /dev/null/ 2>&1

chmod +x $HOME/dotfiles/config/polybar/launch.sh
chmod +x $HOME/dotfiles/config/sxhkd/sxhkdrc
chomd +x $HOME/dotfiles/config/bspwm/bspwmrc
chomd +x $HOME/dotfiles/xinitrc

ln -sf $dotfiles_dir/vim ~/.vim
ln -sf $dotfiles_dir/vimrc ~/.vimrc
ln -sf $dotfiles_dir/bashrc ~/.bashrc
ln -sf $dotfiles_dir/config ~/.config
ln -sf $dotfiles_dir/xinitrc ~/.xinitrc
ln -sf $dotfiles_dir/wallpaper ~/wallpaper

git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git
cd pokemon-colorscripts
sudo ./install.sh
cd
