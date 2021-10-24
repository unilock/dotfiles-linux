#!/bin/sh
source functions/common

# Install long list of packages.
IFS=$'\n'

print_line "Updating apt cache."
sudo apt update

print_line "Upgrading apt packages."
sudo apt upgrade

print_line "Purging unnecessary packages."
sudo apt autoremove --purge

print_line "Installing apt packages."
xargs sudo apt install < lists/apt-packages
