#!/bin/sh

cp ./.zshrc ~/.zshrc 

cp ./.bashrc ~/.bashrc

cd .config 

# For alacritty
mkdir ~/.config/alacritty 
stow -t ~/.config/alacritty alacritty

# for neovim
mkdir ~/.config/nvim
stow -t ~/.config/nvim nvim

# for tmux
mkdir ~/.config/tmux
stow -t ~/.config/tmux tmux
