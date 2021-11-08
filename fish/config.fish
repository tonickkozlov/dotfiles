# disable greeting
set fish_greeting
set --append PATH $HOME/.vim/plugged/fzf/bin
set -x EDITOR (which vi)
source ~/.vim/plugged/fzf/shell/key-bindings.fish
fzf_key_bindings
alias git_branch "git rev-parse --abbrev-ref HEAD"
