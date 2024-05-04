#!/bin/sh
cd .config

# For alacritty
mkdir ~/.config/alacritty
stow -t ~/.config/alacritty alacritty

# for neovim
mkdir ~/.config/nvim
stow -t ~/.config/nvim nvim
