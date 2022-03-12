#!/bin/sh
. ./functions/print_line

# Install long list of flatpaks.

print_line "Adding flathub-beta repository."
flatpak remote-add --user flathub-beta "https://flathub.org/beta-repo/flathub-beta.flatpakrepo"

print_line "Updating flatpak appstream."
flatpak update --appstream

print_line "Uninstalling unnecessary flatpaks."
flatpak uninstall -y --unused

print_line "Installing flatpaks."
xargs flatpak install -y flathub < lists/flatpaks
xargs flatpak install -y flathub-beta < lists/flatpaks-beta
