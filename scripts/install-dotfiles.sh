#!/bin/sh
. ./functions/print_line
. ./functions/copy_file

print_line "Copying default configurations."

# Append to bashrc...
cat dotfiles/bashrc >> ~/.bashrc

# Copy gitconfigs...
copy_file dotfiles-common/dotfiles/gitconfig ~/.gitconfig
copy_file dotfiles-common/.gitignore ~/.gitignore

# Copy imwheelrc...
copy_file dotfiles/imwheelrc ~/.imwheelrc

# Copy config folder...
copy_file dotfiles/config/. ~/.config
