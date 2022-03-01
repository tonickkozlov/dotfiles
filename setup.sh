#!/bin/bash
DOTFILES_DIR="$HOME/dotfiles"

# apt (Linux only)
if [[ $(uname) == 'Linux'* ]]; then
  xargs sudo apt-get install -qq -y < $(dirname -- "${BASH_SOURCE[0]}")/apt/packages.txt
# on a Mac, install Homebrew
elif [[ $(uname) == 'Darwin'* ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  xargs brew install < $(dirname -- "${BASH_SOURCE[0]}")/brew/packages.txt
fi

# tmux
touch ~/.tmux.conf.local
echo source-file "$DOTFILES_DIR/tmux/tmux.conf" > ~/.tmux.conf
# vim
echo source "$DOTFILES_DIR/vim/vimrc" > ~/.vimrc
vim +silent +PlugInstall +qall

# fish
mkdir -p ~/.config/fish
echo source "$DOTFILES_DIR/fish/config.fish" > ~/.config/fish/config.fish
ln -sf "$DOTFILES_DIR/fish/fish_variables" ~/.config/fish/fish_variables
ln -sf "$DOTFILES_DIR/fish/functions/" ~/.config/fish/
