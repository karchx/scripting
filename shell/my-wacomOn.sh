#!/bin/bash

# Install the necessary packages
sudo pacman -S xf86-input-wacom xf86-input-evdev

# Enable the input-wacom driver for the X server
sudo echo "Section "InputClass"
    Identifier "Wacom One"
    MatchProduct "Wacom One S Pen"
    MatchDevicePath "/dev/input/event*"
    Driver "wacom"
    Option "TPCButton" "on"
    Option "Button2" "3"
    Option "Button3" "2"
EndSection" | sudo tee /etc/X11/xorg.conf.d/99-wacom-one.conf

# Reload the X server
sudo systemctl restart sddm.service
