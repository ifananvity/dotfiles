#!/bin/sh
# profile file. runs on login

# environment variables
#export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="$PATH:$HOME/.local/bin/"
export TERMINAL="urxvt"
export EDITOR="vim"
export FILE_MANAGER="ranger"
export BROWSER="firefox"

[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
