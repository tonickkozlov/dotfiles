# disable greeting
set fish_greeting
set --append PATH "$HOME/.vim/plugged/fzf/bin
set --prepend PATH "$HOME/bin"
set -x EDITOR (which vi)
source ~/.vim/plugged/fzf/shell/key-bindings.fish
fzf_key_bindings
alias git_branch "git rev-parse --abbrev-ref HEAD"
alias git_parent_branch "git show-branch | grep '*' | grep -v (git rev-parse --abbrev-ref HEAD) | head -n1 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//'"
