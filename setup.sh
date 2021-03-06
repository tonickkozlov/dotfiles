#!/bin/bash
DOTFILES_DIR="$HOME/dotfiles"

# tmux
touch ~/.tmux.conf.local
echo source-file "$DOTFILES_DIR/tmux/tmux.conf" > ~/.tmux.conf
# vim
echo source "$DOTFILES_DIR/vim/vimrc" > ~/.vimrc

# fish
mkdir -p ~/.config/fish
echo source "$DOTFILES_DIR/fish/config.fish" > ~/.config/fish/config.fish
