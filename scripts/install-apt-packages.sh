#!/bin/sh
. ./functions/print_line

# Install long list of packages.

print_line "Updating apt packages."
sudo apt update

print_line "Upgrading apt packages."
sudo apt upgrade -y

print_line "Purging unnecessary packages."
sudo apt autoremove -y --purge

print_line "Installing apt packages."
xargs sudo apt install -y < lists/apt-packages
