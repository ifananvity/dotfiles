#!/bin/sh

git clone -q https://github.com/ifananvity/dotfiles.git > /dev/null 2>&1
for dot in $(ls dotfiles/ -a); do
	[ ! $dot = ".." ] && [ ! $dot = "." ] && mv -f dotfiles/$dot $HOME
done && rm -rf dotfiles/
