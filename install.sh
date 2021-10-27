#!/bin/sh
. ./functions/print_line

print_line "Elevating to superuser."
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

print_line "Setting up the environment."

# Copy dotfiles to home
./scripts/install-dotfiles.sh

# Set up applications
./scripts/defaults-app-write.sh

# Set sane GNOME defaults
./scripts/defaults-gnome-write.sh

# Purge apt packages
./scripts/purge-apt-packages.sh

# Install apt packages
./scripts/install-apt-packages.sh

# Install special packages
./scripts/install-special-packages.sh

# Install flatpaks
./scripts/install-flatpaks.sh

print_line "Done. A reboot is recommended."
