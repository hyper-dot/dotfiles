#!/bin/bash

# Variables
BACKUP_DIR=~/Public/dotfiles/
PRESENT_WORKING_DIR=$(pwd)
TMUX_DIR="$BACKUP_DIR/tmux"
DATE=$(date)

cd $BACKUP_DIR

if [ ! -d "$TMUX_DIR" ]; then
  mkdir "$TMUX_DIR"
  echo "Directory created: $TMUX_DIR"
else
  echo "Directory already exists: $TMUX_DIR"
fi

cp -r ~/.config/fish/ ./
cp -r ~/.config/tmux/tmux.conf ./tmux
cp -r ~/.config/alacritty ./
cp -r ~/.config/vlc ./

git add .
git commit -m "$DATE"
git push

cd $PRESENT_WORKING_DIR
echo Done !!!

