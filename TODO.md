- We are using Pop!\_OS.

- Add apt packages + flatpaks

- ./scripts/install-dotfiles.sh could probably be very optimized (loop through files to copy, adding "." prefix?)

- Document Settings (e.g. Dock, "Night Light")
    - Automate this? Should be possible with GNOME command line utilities (gsettings)

- Uninstall Firefox

- Add Microsoft Edge Beta repository

- Add Sublime Text repository

- Add Wine APT repository

- Automate adding repositories + keys (check for authenticity? could be dangerous otherwise)
    - Do both in one script: add-apt-repositories.sh
    - Don't "apt update" in script; save that for install-apt-packages.sh
    - Run add-apt-repositories.sh before install-apt-packages.sh
