#!/bin/sh
. ./functions/print_line

# downloading and installing an arbitrary package from an arbitrary location?
# what could possibly go wrong!

_tmpdir="$(mktemp -d)"
_dl='curl -fsSLo "$_tmpdir/edge.deb" "https://go.microsoft.com/fwlink/?linkid=2124602"'

print_line "Installing Microsoft Edge (dev)."

print_line "Downloading package."
if ! $_dl; then
    print_line "Download failed! Aborting."
    rm -r "$_tmpdir"
    exit
fi

print_line "Installing package."
sudo apt install -y "$_tmpdir/edge.deb"

print_line "Cleaning up."
rm -r "$_tmpdir"
