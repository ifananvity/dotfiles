#!/bin/sh
# profile file, runs on login

#export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="$PATH:$HOME/.local/bin/"
export TERMINAL="urxvt"
export FILE_MANAGER="pcmanfm"

[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
