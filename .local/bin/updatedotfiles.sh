#!/bin/sh

git clone -q https://github.com/ifananvity/dotfiles.git
mv -f dotfiles/.* $HOME
rm -rf dotfiles
