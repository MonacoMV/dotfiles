#!/bin/bash

echo "======== Backing up Files ========"

sudo mkdir /bin/backups/
sudo cp -r $HOME/.config /bin/backups

echo "======== Finished Backing up Files ========"
echo "files can be found in /bin/backups"

echo "======== Installing Dotfiles ========"
[ ! -d "$HOME/.config/bspwm" ] && mkdir -p $HOME/.config/bspwm/
cp -r $PWD/config/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc

[ ! -d "$HOME/.config/sxhkd" ] && mkdir -p $HOME/.config/sxhkd/
cp -r $PWD/config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc

[ ! -d "$HOME/.config/alacritty" ] && mkdir -p $HOME/.config/alacritty
cp -r $PWD/config/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

[ ! -d "$HOME/.config/rofi" ] && mkdir -p $HOME/.config/rofi
cp -r $PWD/config/rofi/config.rasi $HOME/.config/rofi/config.rasi

[ ! -d "$HOME/config/polybar" ] && mkdir -p $HOME/.config/polybar
cp -r $PWD/config/polybar/config $HOME/.config/polybar/config
cp -r $PWD/config/polybar/launch.sh $HOME/.config/polybar/launch.sh

[ ! -d "$HOME/bin" ]
cp -r $PWD/bin $HOME/

rm -r $HOME/.vim
cp -r $PWD/vim $HOME/.vim

cp -r $PWD/.vimrc $HOME/.vimrc

cp -r $PWD/.xinitrc $HOME/.xinitrc

cp -r $PWD/.bashrc $HOME/.bashrc

chmod +x $HOME/.config/bspwm/bspwmrc
chmod +x $HOME/.config/sxhkd/sxhkdrc
chmod +x $HOME/.config/polybar/launch.sh
chmod +x $HOME/.xinitrc

git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git
cd pokemon-colorscripts
sudo ./install.sh

echo "Finished Installing Config Files"

set -o errexit

exit 0
