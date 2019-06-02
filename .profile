#!/bin/sh
# profile file, runs on login

[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

[ ! $DISPLAY && $XDG_VTNR -eq 1 ] && exec startx
