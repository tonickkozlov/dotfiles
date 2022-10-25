# disable greeting
set fish_greeting
set --append PATH "$HOME/.vim/plugged/fzf/bin"
set --prepend PATH "$HOME/bin"
set -x EDITOR (which vi)
set -x TERM xterm-256color

source ~/.vim/plugged/fzf/shell/key-bindings.fish
fzf_key_bindings
alias git_branch "git rev-parse --abbrev-ref HEAD"
alias total "paste -sd+ - | bc"

source ~/.config/fish/config.fish.local
