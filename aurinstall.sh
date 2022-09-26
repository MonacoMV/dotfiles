sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

AURPACKAGES="paper-icon-theme plata-theme"

paru -S --needed --noconfirm $AURPACKAGES

