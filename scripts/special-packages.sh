#!/bin/sh
source functions/common

# For special circumstances.

print_line "Setting up Node.js LTS repository and updating apt cache."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

print_line "Purging Firefox."
sudo apt purge firefox
