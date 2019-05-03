#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTSIZE=5000
HISTFILESIZE=5000
export HISTCONTROL=ignoreboth:erasedups # ignoreboth -> ignore duplicates and commands with spaces
export MOZ_ENABLE_WAYLAND=1

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias temacs='emacsclient -t'

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

PS1='[\W] \$ '
