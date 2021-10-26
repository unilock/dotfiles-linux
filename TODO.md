- We are using Pop!\_OS.

- Set appropriate default Java (16 instead of 8)

- Other programs
    - balenaEtcher - OK (download AppImage from website)
    - Discord Canary - OK (download deb from website)
    - Powercord - ??? (auto-install via git: run `discord-canary`, wait for it to update (how?), `git clone` main powercord repo, `npm i`, `git clone` plugins + themes in subdirs, `npm run plug` in root repo dir, `kill -9` discord-canary (get PID?) (warn that Discord will pop up before all this: echo "WARNING", sleep 5, etc.))

- Convert all functions from `bash` to pure `sh`? Regex comparisons prevent this at the moment

- ./scripts/install-dotfiles.sh could probably be much more optimized (loop through files to copy, adding "." prefix?)

- Document Settings (e.g. Dock, "Night Light")
    - Automate this? Should be possible with GNOME command line utilities (gsettings)
    - ^ Put in ./scripts/defaults-gnome-write.sh

- Find a better screenshot program, and/or figure out how to bind it / the current one to CTRL+SHIFT+S or whatever
