#!/bin/sh
source functions/common
source functions/copy_file

print_line "Copying default configurations."

# Edit bashrc...
cat dotfiles/bashrc >> ~/.bashrc

# Copy gitconfigs...
copy_file dotfiles-common/dotfiles/gitconfig ~/.gitconfig
copy_file dotfiles-common/.gitignore ~/.gitignore

# Copy imwheelrc...
copy_file dotfiles/imwheelrc ~/.imwheelrc

# Copy config folder...
copy_file dotfiles/config/. ~/.config
