- We are using Pop!\_OS.

- Add apt packages + flatpaks

- ./scripts/install-dotfiles.sh could probably be much more optimized (loop through files to copy, adding "." prefix?)

- Document Settings (e.g. Dock, "Night Light")
    - Automate this? Should be possible with GNOME command line utilities (gsettings)
    - ^ Put in ./scripts/defaults-gnome-write.sh

- Symlink dotfiles?
    - Can't symlink .bashrc nor .config directory - symlink some but not all?
