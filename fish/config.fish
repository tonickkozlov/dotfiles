# disable greeting
set fish_greeting
set -x PATH "$PATH" ~/.vim/plugged/fzf/bin
source ~/.vim/plugged/fzf/shell/key-bindings.fish
fzf_key_bindings
alias git_branch "git rev-parse --abbrev-ref HEAD"
