#!/bin/sh

# TODO: make this not crap

discord_url="https://discord.com/api/download/canary?platform=linux&format=deb"

wget "${discord_url}" -O /tmp/discord.deb

# TODO: verify discord.deb is actually a .deb

sudo apt install /tmp/discord.deb

echo "WARNING: discord will pop up, ignore it"; sleep 5

# TODO: actually wait for Discord to finish updating
# last line from "discord-canary" after login window appears:
# > [Modules] Finished module installations. [success: 1] [failure: 0]
discord-canary; sleep 20
# ^ need to get PID for discord-canary
# ^ need to run discord-canary in bg; "discord-canary &" as temp solution
# ^ may need to be >20 seconds!?

# TODO: dynamic powercord install directory
#
# dir="~/this/is/where/i/want/powercord"
#
# # how to strip "/powercord" from path?
# stripped_dir="~/this/is/where/i/want"
#
#
# if [ -d $stripped_dir ]; then
#     mkdir -p "$stripped_dir"
# fi
#
# git clone https://github.com/... "$dir"; cd "$dir"
# ...

if [ -d ~/Projects ]; then
    mkdir -p ~/Projects
fi

# TODO: check if powercord and co. are already installed?

# is && a good idea here? if git fails, things could get funky...
# maybe check for errors and quit if necessary?
# ^ additional operators could be useful; a && b || c or some shit
git clone https://github.com/replugged-org/replugged ~/Projects/replugged && cd ~/Projects/replugged

npm i

# put these at top of script
# TODO: if these uris change, self destruct
plugins=(
#   "(user/repo)"
    "cyyynthia/pronoundb-powercord"
)

themes=(
#   "(user/repo)"
    "discord-modifications/dark-discord"
)

# TODO: make this one loop? (for plugins + themes)
cd src/Powercord/plugins
# ^ temporary
for plugin in "${plugins[@]}"; do
    git clone https://github.com/${plugin}.git #src/Powercord/plugins/${everything after / in $plugin}
done

cd ../themes
# ^ VERY temporary
for theme in "${themes[@]}"; do
    git clone https://github.com/${theme}.git #src/Powercord/themes/${everything after / in $theme}
done

cd ../../../
# ^ !!!

# TODO: disable plugins as in dotfiles-common/TODO.md

sudo npm run plug

# this works!
kill -9 ${discord canary pid here}

echo "Discord is installed, check dotfiles-common/TODO.md for non-powercord settings"
# TODO: automate those settings too?
