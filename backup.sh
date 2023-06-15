#!/bin/bash

cp -r ~/.config/fish/ ./
cp -r ~/.config/tmux/tmux.conf ./tmux
cp -r ~/.config/alacritty ./
cp -r ~/.config/vlc ./

git add .
git commit -m "Backed up!!"

echo Done !!!
