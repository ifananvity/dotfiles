#!/bin/sh
# initialization file, executed on login shells

# environment variables
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export TERMINAL="urxvtc"
export EDITOR="nvim"
export FILE_MANAGER="ranger"
export BROWSER="firefox"
export QT_SCALE_FACTOR="1.1"

# colorize man pages
export LESS_TERMCAP_mb=$(printf '\e[01;31m')
export LESS_TERMCAP_md=$(printf '\e[01;31m')
export LESS_TERMCAP_me=$(printf '\e[0m')
export LESS_TERMCAP_se=$(printf '\e[0m')
export LESS_TERMCAP_so=$(printf '\e[01;44;33m')
export LESS_TERMCAP_ue=$(printf '\e[0m')
export LESS_TERMCAP_us=$(printf '\e[01;32m')

[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

[ "$(tty)" = "/dev/tty1" ] && exec startx
