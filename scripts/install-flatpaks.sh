#!/bin/sh
source functions/common

# Install long list of packages.
IFS=$'\n'

print_line "Updating flatpak cache."
flatpak update

print_line "Uninstalling unnecessary flatpaks."
flatpak uninstall --unused

print_line "Installing flatpaks."
xargs flatpak install flathub < lists/flatpaks
