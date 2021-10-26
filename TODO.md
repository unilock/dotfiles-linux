- We are using Pop!\_OS.

- Fix apt key / repository installation so it's not terrible
    - Use trusted.gpg.d, name repo lists appropriately, etc.
    - Implement what each respective repository recommends
    - May have to do this all manually, instead of the current catch-all solution...

- Automatically set appropriate default Java (16 instead of 8)

- ./scripts/install-dotfiles.sh could probably be much more optimized (loop through files to copy, adding "." prefix?)

- Document Settings (e.g. Dock, "Night Light")
    - Automate this? Should be possible with GNOME command line utilities (gsettings)
    - ^ Put in ./scripts/defaults-gnome-write.sh

- Find a better screenshot program, and/or figure out how to bind it / the current one to CTRL+SHIFT+S or whatever
