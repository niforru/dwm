#!/bin/sh

IFPAC=/bin/pacman
DEPDONE=DEPDONE.txt

cd dwmblocks && make install clean && cd ..

# Checks if pacman is installed and if so install dependencies
if [ -f "$IFPAC" ]; then
    if [ -f "$DEPDONE"];  then
        echo "Already installed dependencies";
    else
        echo "Installing dependencies"; 
        sudo pacman -S libx11 libxft xorg-server xorg-xinit --noconfirm --needed;
        touch DEPDONE.txt;
    fi
else
    echo "You know Arch is cooler right?";
fi