#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# aliases
alias ls="ls -lht --color=auto"
alias grep="grep --color=auto"

# start on boot
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
