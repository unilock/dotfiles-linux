#!/bin/sh
. ./functions/print_line

print_line "Setting up GNOME defaults."

-print_line " - Minimize or preview app windows when clicking dock icon"
-gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'

print_line " - Bind interactive screenshot to SUPER + SHIFT + S"
gsettings set org.gnome.shell.keybindings show-screenshot-ui "['<Super><Shift>r']"

print_line " - Bind interactive screencast recording to SUPER + SHIFT + R"
gsettings set org.gnome.shell.keybindings show-screen-recording-ui "['<Super><Shift>r']"

# --- Flameshot ---

print_line " - Bind Flameshot to PRINT"

# Disable GNOME's default Print Screen binding
gsettings set org.gnome.shell.keybindings show-screenshot-ui "['']"

# Edit this line if wanting to add more custom keybinds (e.g. "['.../custom0/','.../custom1/','.../custom2/']" etc.)
# (may be able to "append" rather than "set")
# Then add more "gsettings set ...media-keys.custom-keybinding:/..." lines appropriately
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"

# Name, Command, Binding (scroll to the right)                                                                  Edit this number for other keybinds ↴
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Flameshot'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'flatpak run org.flameshot.Flameshot gui'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'Print'"
