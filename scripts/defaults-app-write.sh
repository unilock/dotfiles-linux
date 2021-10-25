#!/bin/sh
source functions/common
source functions/copy_file

print_line "Setting application defaults."

print_line "Setting defaults for Sublime Text."
copy_file dotfiles-common/prefs/sublime-text/. ~/.config/sublime-text
