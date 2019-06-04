#!/bin/bash
# runs when starting a new terminal session

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

# cd into directory merely by typing the directory name
shopt -s autocd

# prompt
PS1='[\u@\h \W]\$ '

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
