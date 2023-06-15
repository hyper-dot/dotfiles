#!/bin/bash

BACKUP_DIR=~/Public/dotfiles/

cp -r ~/.config/fish/ $BACKUP_DIR
cp -r ~/.config/tmux/tmux.conf $BACKUP_DIR
cp -r ~/.config/alacritty $BACKUP_DIR
cp -r ~/.config/vlc $BACKUP_DIR

git add $BACKUP_DIR
git commit -m "Backed up!!"

echo Done !!!
