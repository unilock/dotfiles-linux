#!/bin/sh
source functions/common

# Install long list of flatpaks.

IFS=$'\n'

print_line "Updating flatpak cache."
flatpak update

print_line "Uninstalling unnecessary flatpaks."
flatpak uninstall -y --unused

print_line "Installing flatpaks."
xargs flatpak install -y flathub < lists/flatpaks
