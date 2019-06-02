#!/bin/sh
# profile file, runs on login

[ -f ~/.bashrc ] && . ~/.bashrc

[ ! $DISPLAY && $XDG_VTNR -eq 1 ] && exec startx
