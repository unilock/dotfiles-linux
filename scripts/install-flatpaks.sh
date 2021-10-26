#!/bin/sh
. ./functions/print_line

# Install long list of flatpaks.

print_line "Updating flatpak cache."
flatpak update

print_line "Uninstalling unnecessary flatpaks."
flatpak uninstall -y --unused

print_line "Installing flatpaks."
xargs flatpak install -y flathub < lists/flatpaks
