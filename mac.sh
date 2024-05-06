#!/bin/sh

# link bashrc and zshrc files
ln -s ~/dotfiles/.zshrc ~/.zshrc 
ln -s ~/dotfiles/.bashrc ~/.bashrc

cd .config 

# for alacritty
mkdir ~/.config/alacritty 
stow -t ~/.config/alacritty alacritty

# for neovim
mkdir ~/.config/nvim
stow -t ~/.config/nvim nvim

# for tmux
mkdir ~/.config/tmux
stow -t ~/.config/tmux tmux
