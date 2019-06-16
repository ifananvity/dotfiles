#!/bin/bash
# per-interactive shell startup file

[[ $- != *i* ]] && return # if not running interactively, don't do anything

stty -ixon # disable ctrl-s and ctrl-q.
shopt -s autocd # cd into directory merely by typing the directory name
HISTSIZE= HISTFILESIZE= # infinite history
HISTTIMEFORMAT="[%F %T] " # include timestamps on history

# prompt
PS1="\[$(tput bold)$(tput setaf 2)\][\u@\h \[$(tput setaf 1)\]\W\[$(tput setaf 2)\]]\\$ \[$(tput sgr0)\]"

[ -f "$HOME/.config/aliasrc" ] && . "$HOME/.config/aliasrc"
