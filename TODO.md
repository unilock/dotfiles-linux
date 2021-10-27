TODO:

- Wait for apt lock to die before running apt-related commands
    - while \[ -e .../apt-lock \]; do print_line "Waiting for apt lock..."; done

- This. Why does `copy_file` output look like this? `/home/unilock/.gitconfig/gitconfig`???
```
unilock@pop-os:~/Projects/dotfiles-linux$ ./scripts/install-dotfiles.sh 
[2021-10-26 20:13:20] Copying default configurations.
[2021-10-26 20:13:20] gitconfigs
'dotfiles-common/dotfiles/gitconfig' -> '/home/unilock/.gitconfig/gitconfig'
'dotfiles-common/.gitignore' -> '/home/unilock/.gitignore/.gitignore'
[2021-10-26 20:13:20] imwheelrc
'dotfiles/imwheelrc' -> '/home/unilock/.imwheelrc/imwheelrc'
[2021-10-26 20:13:20] config folder
'dotfiles/config/autostart' -> '/home/unilock/.config/autostart'
'dotfiles/config/autostart/imwheel.desktop' -> '/home/unilock/.config/autostart/imwheel.desktop'
'dotfiles/config/autostart/nextcloud.desktop' -> '/home/unilock/.config/autostart/nextcloud.desktop'
```

- Differentiate between desktop + laptop?
    - imwheel on desktop only
    - touchpad speed on laptop only

- Set appropriate default Java (16 instead of 8)

- ./scripts/install-dotfiles.sh could probably be optimized (loop through files to copy, adding "." prefix?)

- Document Settings (e.g. Dock, "Night Light")
    - Automate this? Should be possible with GNOME command line utilities (gsettings)
    - ^ Put in ./scripts/defaults-gnome-write.sh
    - Settings
        - Wi-Fi (if applicable): ON (laptop) / OFF (desktop)
        - Bluetooth (if applicable): OFF
        - Desktop
            - General
                - Super Key Action: LAUNCHER
                - Hot Corner: OFF
                - Top Bar
                    - Show Workspaces Button: OFF
                    - Show Applications Button: OFF
                    - Date & Time and Notifications Position: CENTER
                - Windows Controls
                    - Show Minimize Button: ON
                    - Show Maximize Button: OFF
            - Background: (choice)
            - Appearance: DARK
            - Dock
                - Dock Options
                    - Extend docks to the edges of the screen: ON
                    - Show Launcher Icon in Dock: OFF
                    - Show Workspaces Icon in Dock: OFF
                    - Show Applications Icon in Dock: ON
                    - Show Mounted Drives: OFF
                    - Icon Click Action: LAUNCH, MINIMIZE, OR PREVIEW (already figured out this one...)
                - Dock Visibility: ALWAYS
                - Show Dock on Display: PRIMARY
                - Dock Size: 42
                - Position on the Desktop: BOTTOM
        - Privacy
            - Connectivity Checking: ON
            - Location Services: ON
            - Thunderbolt (if applicable): Direct Access: OFF
            - File History & Trash
                - Automatically Delete Temporary Files: ON
                - Automatically Delete Period: 1 DAY
            - Screen Lock
                - Blank Screen Delay: 5 MINUTES (laptop) / 10 MINUTES (desktop)
                - Automatic Screen Lock: ON
                - Automatic Screen Lock Delay: SCREEN TURNS OFF
                - Lock Screen on Suspend: ON
                - Show Notifications on Lock Screen: OFF
        - Sharing: Computer Name: (choice)
        - Power
            - Automatic Suspend
                - (laptop)
                    - On Battery Power: 15 MINUTES
                    - Plugged In: 20 MINUTES
                - (desktop)
                    - Plugged In: 30 MINUTES
            - Power Button Behavior: POWER OFF
            - Show Battery Percentage (laptop): ON
        - Displays
            - Displays: Refresh Rate: (choice) (can test with glxgears)
            - Night Light: ON
                - Schedule: SUNSET TO SUNRISE
        - Mouse & Touchpad
            - Touchpad
                - Touchpad Speed (laptop): 0.2 (org.gnome.desktop.peripherals.touchpad speed)
                - Disable while typing: OFF
        - Default Applications
            - Web: Microsoft Edge (beta)
            - Mail: Geary
            - Calendar: Calendar
            - Music: VLC media player
            - Video: VLC media player
            - Photos: Image Viewer
        - OS Upgrade & Recovery: don't forget to upgrade recovery partition!

- Other programs
    - balenaEtcher - repo to be added: https://github.com/balena-io/etcher#debian-and-ubuntu-based-package-repository-gnulinux-x86x64
    - Discord Canary - OK (download deb from website, use curl/wget to preserve filename): https://discord.com/api/download/canary?platform=linux&format=deb
    - Powercord - ??? (auto-install via git: run `discord-canary`, wait for it to update (how?), `git clone` main powercord repo, `npm i`, `git clone` plugins + themes in subdirs, `npm run plug` in root repo dir, `kill -9` discord-canary (get PID?) (warn that Discord will pop up before all this: echo "WARNING", sleep 5, etc.))

- Find a better screenshot program, and/or figure out how to bind it / the current one to CTRL+SHIFT+S or whatever
