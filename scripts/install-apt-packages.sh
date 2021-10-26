#!/bin/sh
source functions/common

# Install long list of packages.

# Skip this, as Node's setup_lts.x does it for us.
# (Hopefully they don't change that anytime soon.)
#print_line "Updating apt cache."
#sudo apt update

print_line "Purging Firefox."
sudo apt purge -y firefox

print_line "Updating apt packages."
sudo apt update

print_line "Upgrading apt packages."
sudo apt upgrade -y

print_line "Purging unnecessary packages."
sudo apt autoremove -y --purge

print_line "Installing apt packages."
xargs sudo apt install -y < lists/apt-packages
