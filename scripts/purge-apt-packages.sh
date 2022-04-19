#!/bin/sh
. ./functions/print_line

# Purge long list of packages.

print_line "Purging Firefox."
sudo apt purge -y firefox*

print_line "Purging gedit."
sudo apt purge -y gedit*

print_line "Purging LibreOffice (we use the flatpak)."
sudo apt purge -y libreoffice*

print_line "Purging GNOME Videos."
sudo apt purge -y totem*
