TODO:

- flatpaks: kdenlive + obs for recording, polymc for video game

- homebrew :(
    - tap unilock/ideviceglue
    - install --HEAD
        - libusbmuxd-git
        - libimobiledevice-git
        - libirecovery-git
        - idevicerestore-git

- go through GNOME keybinds; edit / disable as necessary

- delete WINE file associations (they take precedence and are annoying)

- files: 3-bar menu -> preferences -> performance -> show thumbnails: ALL FILES
- terminal: global -> general -> menu accelerator (f10): OFF
- photo viewer: don't smooth images when zoomed in

- allow run in background
    - flameshot
    - keepassxc
    - nextcloud client

- git
    - automatically set upstream for dotfiles-linux + dotfiles-common (SSH)?
    - create key automatically; instruct how to add to github after install.sh
- keepassxc preferences
- psensor preferences (not device-specific)
- HxD
    - point portable installer to ~/Documents/HxD (C:\users\unilock\Documents\HxD)
    - run HxD64.exe via wine
    - create .desktop file
        - need to extract icon from executable (for aesthetics)
- install runcat gnome extension (it is so cool and epic)

- Wait for apt lock to die before running apt-related commands
    - while \[ -e .../apt-lock \]; do print_line "Waiting for apt lock..."; done
    - ^ this may not work actually

- Differentiate between desktop + laptop?
    - touchpad speed on laptop only

- Automate Terminal preferences; see "./temporary/gnome terminal prefs.txt"

- Download android-platform-tools to \~/Documents - https://dl.google.com/android/repository/platform-tools-latest-linux.zip
    - Update automatically?
        - Cache downloaded ZIP + compare against new one? Ideally don't want to download new ZIP every time we check for updates
        - Parse https://developer.android.com/studio/releases/platform-tools#revisions for revision dates!?

- Install Adoptium JDK - https://adoptium.net/
    - https://github.com/rpardini/adoptium-deb-installer ?
    - purge preinstalled java + install `default-jre` (I think?????)
    - In ./dotfiles/profile:
```
# java
export PATH="$HOME/java/jdk-17.0.3+8/bin:$PATH"
```
    - remember to update .profile!

- ./scripts/install-dotfiles.sh could probably be optimized (loop through files to copy, adding "." prefix?)

- Document Settings (e.g. Dock, "Night Light")
    - Automate this? Should be possible with GNOME command line utilities (gsettings)
    - ^ Put in ./scripts/defaults-gnome-write.sh
    - Settings
        - Wi-Fi: ON (laptop) / OFF (desktop)
        - Bluetooth: OFF
        - Desktop
            - Desktop Options
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
                - Enable Dock: ON
                - Dock Options
                    - Extend docks to the edges of the screen: ON
                    - Show Launcher Icon in Dock: OFF
                    - Show Workspaces Icon in Dock: OFF
                    - Show Applications Icon in Dock: ON
                    - Show Mounted Drives: OFF
                    - Icon Click Action: LAUNCH, MINIMIZE, OR PREVIEW WINDOWS
                - Dock Visibility
                    - ALWAYS VISIBLE
                    - Show Dock on Display: PRIMARY DISPLAY
                - Dock Size -> Custom Size: 42
                - Position on the Desktop: BOTTOM
            - Workspaces: (N/A)
        - Privacy
            - Connectivity Checking: ON
            - Location Services: ON
            - Thunderbolt
                - Direct Access: OFF
                - ...
            - File History & Trash
                - File History: ON
                - File History Duration: FOREVER
            - Trash & Temporary Files
                - Automatically Delete Temporary Files: ON
                - Automatically Delete Period: 1 DAY
                - (delete temporary files)
            - Screen -> Screen Lock
                - Blank Screen Delay: 5 MINUTES (laptop) / 10 MINUTES (desktop)
                - Automatic Screen Lock: ON
                - Automatic Screen Lock Delay: SCREEN TURNS OFF
                - Lock Screen on Suspend: ON
                - Show Notifications on Lock Screen: OFF
        - Sharing -> Computer Name: (choice)
        - Power
            - Automatic Suspend
                - When idle: ON
                - ...
                - Delay
                    - (laptop)
                        - On Battery Power: 15 MINUTES
                        - Plugged In: 20 MINUTES
                    - (desktop)
                        - 30 MINUTES
            - Power Button Behavior: POWER OFF
            - Show Battery Percentage (laptop): ON
        - Displays
            - Displays
                - (monitor)
                    - Resolution: (choice)
                    - Refresh Rate: (choice - can test with glxgears)
            - Night Light: ON
                - Schedule: SUNSET TO SUNRISE
        - Mouse & Touchpad
            - Primary Button: LEFT
            - Mouse
                - Mouse Speed: MAXIMUM!!! (what value is this?)
                - Mouse Acceleration: ON
                - Natural Scrolling: OFF(?)
            - Touchpad
                - Touchpad Speed (laptop): 0.2 (org.gnome.desktop.peripherals.touchpad speed)
                - Natural Scrolling: ON
                - Disable while typing: OFF
        - Color -> (laptop: download + add correct color profile)
        - Firmware -> (laptop: `fwupdate upgrade` iirc)
        - Default Applications
            - Web: Microsoft Edge
            - Mail: Geary
            - Calendar: Calendar
            - Music: VLC media player
            - Video: VLC media player
            - Photos: Image Viewer
        - Date & Time
            - Automatice Date & Time: ON
            - Automatice Time Zone: ON
            - Time Format: AM / PM
        - OS Upgrade & Recovery: (don't forget to upgrade recovery partition!)

- Other programs
    - Discord Canary - OK (download deb from website, use curl/wget to preserve filename): https://discord.com/api/download/canary?platform=linux&format=deb
    - Powercord - ??? (auto-install via git: run `discord-canary`, wait for it to update (how?), `git clone` main powercord repo, `npm i`, `git clone` plugins + themes in subdirs, `npm run plug` in root repo dir, `kill -9` discord-canary (get PID?) (warn that Discord will pop up before all this: echo "WARNING", sleep 5, etc.))
