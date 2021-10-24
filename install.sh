#!/bin/bash
source functions/common

print_line "Setting up the environment."

# Set motd
./scripts/set-motd.sh

# Copy dotfiles to home
./scripts/install-dotfiles.sh

print_line "Done. A reboot is recommended."
