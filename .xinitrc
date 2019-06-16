#!/bin/sh
# commands to be executed by startx or xinit

[ -f "$HOME/.Xresources" ] && xrdb "$HOME/.Xresources"
[ -f "$HOME/.xprofile" ] && . "$HOME/.xprofile"

exec openbox-session
