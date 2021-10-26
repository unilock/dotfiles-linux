#!/bin/sh
. ./functions/print_line
. ./functions/add_apt_repo

_aptsource_dir="/etc/apt/sources.list.d"
_keyring="/usr/share/keyrings"
_codename="$(lsb_release -cs)"

# For special circumstances.

print_line "Setting up special packages."

print_line "Adding AdoptOpenJDK repository."
add_apt_repo "adoptopenjdk.gpg" "adoptopenjdk.list" "https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public" "https://adoptopenjdk.jfrog.io/adoptopenjdk/deb $_codename main"

print_line "Adding Microsoft Edge repository."
add_apt_repo "microsoft.gpg" "microsoft-edge.list" "https://packages.microsoft.com/keys/microsoft.asc" "[arch=amd64] https://packages.microsoft.com/repos/edge stable main"

print_line "Adding Sublime Text repository."
add_apt_repo "sublimehq.gpg" "sublimehq.list" "https://download.sublimetext.com/sublimehq-pub.gpg" "https://download.sublimetext.com/ apt/stable/"

print_line "Adding Node.js LTS repository."
add_apt_repo "nodesource.gpg" "nodesource.list" "https://deb.nodesource.com/gpgkey/nodesource.gpg.key" "https://deb.nodesource.com/node_14.x $_codename main" "src"

print_line "Adding WineHQ repository."
add_apt_repo "winehq.gpg" "winehq.list" "https://dl.winehq.org/wine-builds/winehq.key" "https://dl.winehq.org/wine-builds/ubuntu/ $_codename main"

print_line "Updating apt cache (again)."
sudo apt update

print_line "Installing special packages."
xargs sudo apt install -y < lists/apt-packages-2
