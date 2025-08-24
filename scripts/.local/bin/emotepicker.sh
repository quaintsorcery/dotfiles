#!/usr/bin/env bash

# Luke Smith's emote picker script

chosen=$(cut -d ';' -f1 ~/.local/share/chars/* | dmenu -i -l 30 | sed "s/ .*//")

[ -z "$chosen" ] && exit

if [ -n "$1" ]; then
    xdotool type "$chosen"
else
    printf "%s" "$chosen" | xclip -selection clipboard
fi

