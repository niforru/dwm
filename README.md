# dwm (Niforrus build) - dynamic window manager

dwm is an extremely fast, small, and dynamic window manager for X.

## Added features

    > Volume Controls
    > Brightness Controls
    > Status bar

The status bar is a modified version of https://github.com/torrinfail/dwmblocks

## Requirements

In order to build dwm you need the Xlib header files (if using arch linux this should be installed by default).

### Optional

    > pactl(Volume)
    > brightnessctl(Brightness)
    > any nerdfont font

## Installation

Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm (if
necessary as root):

```sh
    $ make install clean
```
## Running dwm

Add the following line to your .xinitrc to start dwm using startx:

    exec dwm

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

    while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
    exec dwm

## Configuration

The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.

The .orig files are the last version of files that appear to be working correctly.

More configuration options can be found at my .xinitrc from https://github.com/niforru/dotfiles


## TODO
    [] intergrate dwmblocks directly in the main binary
	[] add up/download speed to dwmblocks
