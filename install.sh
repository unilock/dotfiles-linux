#!/bin/bash
source functions/common

print_line "Setting up the environment."

# Copy dotfiles to home
./scripts/install-dotfiles.sh

# Set up applications
./scripts/defaults-app-write.sh

# Set sane GNOME defaults
./scripts/defaults-gnome-write.sh

# Install apt packages
./scripts/install-apt-packages.sh

# Install flatpaks
./scripts/install-flatpaks.sh

print_line "Done. A reboot is recommended."
