#!/bin/bash

BACKUP_DIR=~/Public/dotfiles/

PRESENT_WORKING_DIR=$(pwd)

cd $BACKUP_DIR

cp -r ~/.config/fish/ $BACKUP_DIR
mkdir $BACKUP_DIR/tmux
cp -r ~/.config/tmux/tmux.conf $BACKUP_DIR/tmux
cp -r ~/.config/alacritty $BACKUP_DIR
cp -r ~/.config/vlc $BACKUP_DIR

git add $BACKUP_DIR
git commit -m "Backed up!!"

cd $PRESENT_WORKING_DIR
echo Done !!!

