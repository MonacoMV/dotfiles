sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --needed --noconfirm

AURPACKAGES="plata-theme pfetch rofi-power-menu"

paru -S --needed --noconfirm $AURPACKAGES

