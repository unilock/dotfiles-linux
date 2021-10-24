#!/bin/bash
source functions/common

print_line "Setting up the environment."

# Copy dotfiles to home
./scripts/install-dotfiles.sh

# Install apt packages
./scripts/install-apt-packages.sh

# Install flatpaks
./scripts/install-flatpaks.sh

print_line "Done. A reboot is recommended."
