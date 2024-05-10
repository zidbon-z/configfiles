#! /bin/sh

sudo pacman -Syy
sudo pacman -Syu
mkdir /tmp/yay
cd /tmp/yay
curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
makepkg -si
cd
rm -rf /tmp/yay

yay -S --noconfirm  kitty alsa-utils udiskie thunar git dmenu ntfs-3g lxappearance qt5ct breeze-gtk deepin-gtk-theme ncdu firefox os-prober openssh  virtualbox newsboat vlc mpv calcurse w3m python-pillow irssi figlet btop neofetch flameshot toilet ncmpcpp mpd mpc hyprland waybar waypaper wofi
