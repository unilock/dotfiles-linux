#!/bin/sh
source functions/common
source functions/copy_file

print_line "Copying default settings files."

# Copy my gitconfigs...
copy_file dotfiles-common/dotfiles/gitconfig ~/.gitconfig
copy_file dotfiles-common/.gitignore ~/.gitignore

# Copy my config folder...
copy_file dotfiles/config/. ~/.config
