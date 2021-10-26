#!/bin/sh
source functions/common

# Install long list of packages.

IFS=$'\n'

print_line "Setting up apt repostories."

for _key in lists/apt-keys; do
    wget -qO - "$_key" | sudo apt-key add -
done

export _codename=$(lsb_release -cs)

for _repo in $(envsubst < lists/apt-repositories); do
    sudo add-apt-repository -yn "$_repo"
done

print_line "Configure special packages."
scripts/special-packages.sh

# Skip this, as Node's setup_lts.x does it for us.
# (Hopefully they don't change that anytime soon.)
#print_line "Updating apt cache."
#sudo apt update

print_line "Upgrading apt packages."
sudo apt upgrade

print_line "Purging unnecessary packages."
sudo apt autoremove --purge

print_line "Installing apt packages."
xargs sudo apt install < lists/apt-packages
