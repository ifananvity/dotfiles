#!/bin/bash
# runs when starting a new terminal session

shopt -s autocd # cd into directory merely by typing the directory name
HISTSIZE= HISTFILESIZE= # infinite history

# colorize man pages
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

# prompt
PS1='[\u@\h \W]\$ '

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
