#!/bin/sh

[ -f "$HOME/.Xresources" ] && xrdb "$HOME/.Xresources"
[ -f "$HOME/.xprofile" ] && source "$HOME/.xprofile"

exec openbox-session
