#!/bin/bash

log_file=~/install_progress_log.txt

echo "======== Backing up Files ========"

sudo mkdir /bin/backups/
sudo cp -r $HOME/.config /bin/backups

echo "======== Finished Backing up Files ========"
echo "files can be found in /bin/backups"

echo "======== Installing Dotfiles ========"
[ ! -d "$HOME/.config/bspwm" ] && mkdir -p $HOME/.config/bspwm/
if cp -r $PWD/.config/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc;then
		echo "bspwm config finished" >> $log_file
else
		echo "bspwm config failed" >> $log_file
fi

[ ! -d "$HOME/.config/sxhkd" ] && mkdir -p $HOME/.config/sxhkd/
if cp -r $PWD/.config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc; then
		echo "sxhkd config finished" >> $log_file
else
		echo "sxhkd config failed" >> $log_file
fi

git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git
cd pokemon-colorscripts
sudo ./install.sh
if type -p pokemon-colorscripts > /dev/null; then
		echo "pokemon-colorscripts installed" >> $log_file
else
		echo "pokemon-colorscripts failed to install" >> $log_file
fi

echo
echo "====== Summary ======"
cat $log_file
echo
rm $log_file
