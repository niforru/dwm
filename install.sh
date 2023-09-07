#!/bin/sh

# Checks if pacman is installed and if so install dependencies and if not gives a helpful suggestion
FILE=/etc/resolv.conf
if [ -f "$FILE" ]; then
    echo "Installing dependencies"; 
    sudo pacman -S alsa-utils cmus xorg-setxkbmap extra/mpc networkmanager networkmanager-openvpn calcurse transmission-remote-gtk connman curl pamixer libx11 libxft xorg-server xorg-xinit --noconfirm --needed;
else
    echo "You know Arch is cooler right?";
fi
