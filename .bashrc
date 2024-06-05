#
# ~/.bashrc
#

shopt -s autocd

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ff='fastfetch -c ~/.config/ff/13.jsonc'
alias z='cd $(find $HOME/dev/ -maxdepth 1 -type d | fzf --preview "exa -TL1 --icons {}")'
alias b='xdg-open "$(find $HOME/dox/books -type f | fzf )" '
alias ll='exa --icons -stype --oneline'
alias la='exa --icons -stype --oneline -a'
alias ls='exa --icons -stype '
alias vim='nvim'
alias e='nvim'

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
colorscript random
eval "$(starship init bash)"
