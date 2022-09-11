sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

AURPACKAGES="picom-ibhagwan-git"

paru -S --needed --noconfirm $AURPACKAGES

