#!/bin/sh
. ./functions/print_line
. ./functions/copy_file

print_line "Setting application defaults."

print_line "Creating necessary files / folders."
mkdir -p ~/Pictures/Screenshots
mkdir -p ~/Videos/Recordings

print_line "Setting defaults for Sublime Text."
copy_file dotfiles-common/prefs/sublime-text/. ~/.config/sublime-text

print_line "Fixing adb / fastboot user permissions."
sudo usermod -aG plugdev unilock
