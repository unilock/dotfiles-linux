#!/bin/sh
source functions/common

print_line "Copying default settings files..."

# Copy my gitconfigs...
cp -v dotfiles/gitconfig ~/.gitconfig
cp -v .gitignore ~/.gitignore
