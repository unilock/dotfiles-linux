#!/bin/sh
. ./functions/print_line
. ./functions/copy_file

print_line "Copying default configurations."

print_line "Appending to bashrc + profile..."
cat dotfiles/bashrc >> ~/.bashrc
cat dotfiles/profile >> ~/.profile

print_line "Copying gitconfigs..."
copy_file dotfiles-common/dotfiles/gitconfig ~/.gitconfig
copy_file dotfiles-common/.gitignore ~/.gitignore

print_line "Copying config folder..."
copy_file dotfiles/config/. ~/.config
