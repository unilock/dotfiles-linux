#!/bin/sh
. ./functions/print_line
. ./functions/copy_file

print_line "Setting application defaults."

print_line "Creating necessary files / folders."
touch ~/Templates/blank.txt
mkdir -p ~/Pictures/Screenshots
mkdir -p ~/Videos/Recordings

print_line "Setting defaults for Flameshot."
copy_file dotfiles/flameshot.ini ~/.var/app/org.flameshot.Flameshot/config/flameshot/flameshot.ini

print_line "Setting defaults for Sublime Text."
copy_file dotfiles-common/prefs/sublime-text/. ~/.config/sublime-text

print_line "Fixing adb / fastboot user permissions."
sudo usermod -aG plugdev unilock
