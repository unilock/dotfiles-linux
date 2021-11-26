#!/bin/sh
. ./functions/print_line

# Purge long list of packages.

print_line "Purging Firefox."
sudo apt purge -y firefox*

print_line "Purging LibreOffice (we use the flatpak)."
sudo apt purge -y libreoffice*
