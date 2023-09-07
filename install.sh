#!/bin/sh

# Checks if pacman is installed and if so install dependencies and if not gives a helpful suggestion
FILE=/bin/pacman
if [ -f "$FILE" ]; then
    echo "Installing dependencies"; 
    sudo pacman -S libx11 libxft xorg-server xorg-xinit --noconfirm --needed;
else
    echo "You know Arch is cooler right?";
fi
