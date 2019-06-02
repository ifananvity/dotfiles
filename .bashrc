#!/bin/bash

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

# cd into directory merely by typing the directory name
shopt -s autocd

PS1='[\u@\h \W]\$ '
