#!/bin/sh

find $HOME -mindepth 1 -delete
git clone -q https://github.com/ifananvity/dotfiles.git
mv -f dotfiles/.* -t $HOME > /dev/null 2>&1
rm -rf dotfiles/
chown -R "$whoami":users $HOME
