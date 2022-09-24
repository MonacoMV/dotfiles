#!/bin/bash

dotfiles_dir=~/dotfiles

sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.config > /dev/null 2>&1
sudo rm -rf ~/.xinitrc > /dev/null 2>&1

ln -sf $dotfiles_dir/vim ~/.vim
ln -sf $dotfiles_dir/vimrc ~/.vimrc
ln -sf $dotfiles_dir/bashrc ~/.bashrc
ln -sf $dotfiles_dir/config ~/.config
ln -sf $dotfiles_dir/ ~/.xinitrc