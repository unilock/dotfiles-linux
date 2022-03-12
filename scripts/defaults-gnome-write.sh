#!/bin/sh
. ./functions/print_line

print_line "Setting up GNOME defaults."

print_line " - 'minimize-or-previews' click-action for dash-to-dock"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'

# --- Flameshot ---

print_line " - Bind Flameshot to PRINT SCREEN"

# Disable GNOME's default Print Screen binding
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot "['']"

# Edit this line if wanting to add more custom keybinds (e.g. "['.../custom0/','.../custom1/','.../custom2/']" etc.)
# (may be able to "append" rather than "set")
# Then add more "gsettings set ...media-keys.custom-keybinding:/..." lines appropriately
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"

# Name, Command, Binding (scroll to the right)                                                                  Edit this number for other keybinds ↴
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Flameshot'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'flatpak run org.flameshot.Flameshot gui'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'Print'"
