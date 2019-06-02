#!/bin/sh
# profile file, runs on login

[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
