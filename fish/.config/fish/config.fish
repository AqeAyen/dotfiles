set -U fish_user_paths ~/.local/bin/
clear
fastfetch
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias ltree="eza --tree --level=2  --icons --git"
alias v nvim
alias ls lsd
alias C-l clear
set -g fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end
