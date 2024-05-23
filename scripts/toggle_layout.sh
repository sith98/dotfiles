#!/bin/bash

# Check current layout
current_layout=$(setxkbmap -query | awk '/layout/{print $2}')

# Toggle between de and us layout
if [ $current_layout == "us" ]; then
    setxkbmap de
else
    setxkbmap us
fi

setxkbmap -option caps:swapescape
# xmodmap -e 'remove Lock = Caps_Lock' -e 'keysym Caps_Lock = Escape'
