#!/bin/sh
source functions/common

print_line "Setting GNOME defaults."

print_line " - 'minimize-or-previews' click-action for dash-to-dock"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
