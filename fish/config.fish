# disable greeting
set fish_greeting
set --prepend PATH "$HOME/bin"
alias git_branch "git rev-parse --abbrev-ref HEAD"
alias total "paste -sd+ - | bc"
source ~/.config/fish/config.fish.local

if not status --is-interactive
  exit 0
end

set -x EDITOR (which vi)
set -x TERM xterm-256color
set --append PATH "$HOME/.vim/plugged/fzf/bin"
source /Users/anton/.vim/plugged/fzf/shell/key-bindings.fish
fzf_key_bindings

