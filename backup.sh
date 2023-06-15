#!/bin/bash

BACKUP_DIR=~/Public/dotfiles/

PRESENT_WORKING_DIR=$(pwd)

cd $BACKUP_DIR



TMUX_DIR="$BACKUP_DIR/tmux"

if [ ! -d "$TMUX_DIR" ]; then
  mkdir "$TMUX_DIR"
  echo "Directory created: $TMUX_DIR"
else
  echo "Directory already exists: $TMUX_DIR"
fi

cp -r ~/.config/fish/ $BACKUP_DIR
cp -r ~/.config/tmux/tmux.conf $BACKUP_DIR/tmux
cp -r ~/.config/alacritty $BACKUP_DIR
cp -r ~/.config/vlc $BACKUP_DIR

git add $BACKUP_DIR
git commit -m "Backed up!!"

cd $PRESENT_WORKING_DIR
echo Done !!!

