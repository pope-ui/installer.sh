#!/usr/bin/env bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg Display Server Installation
sudo apt install -y xorg xserver-xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Create Folders in user direcriory ( Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

#  XFCE Minimal
# sudo apt install -y xfce4 xfce4-goodies

#Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo apt install -y policykit-1-gnome network-Manager network-manager-gnome

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Terminal
sudo apt install -y kitty tilix

#Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Neofetch
sudo apt install -y neofetch

# Installation for Appearance Management
sudo apt install -y lxappearence

# Browser Installation
sudo apt install -y firefox-esr

#Desktop Background browser/handler
# feh --bg-fill /path/to/Directory
# sudo apt install -y nitrogen
sudo apt install -y feh

# Fonts and Icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus papirus-icon-theme

# EXA Installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first
sudo apt install -y exa

# Printing and Bluetooth
sudo apt install -y cups system-config-printer simple-scan
sudo apt install -y bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

# Packages needed for window manager Installation
sudo apt install -y picom rofi dunst libnotify-bin unzip wmctrl xdotool

#Geany Text Editor
# sudo apt install -y geany geany-plugin-addons geany-plugin-git-changebar geany-plugin-overview geany-plugin-spellcheck geany-plugin-treebrowser
# sudo apt install -y Mousepad

# Multimedia/GFX
sudo apt install -y mpv qimgv scrot gimp obs-studio mkvtoolnix-gui redshift eog

# PDF
sudo apt install -y evince pdfarranger

# Others
sudo apt install -y numlockx figlet galculator cpu-x udns-utils whois curl tree bc jq wget 

# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm


##########################################################################################################
# End of script for Default config

sudo apt autoremove

printf "\e[1;32mYou can reboot! Thank you.\e[0m\n"

