#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTSIZE=5000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth:erasedups # ignoreboth -> ignore duplicates and commands with spaces
export MOZ_ENABLE_WAYLAND=1
export XDG_CURRENT_DESKTOP=sway # for xdg-desktop-portal-wlr, i.e., screen capture

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias temacs='emacsclient -t'

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# mark missing newline
# https://www.vidarholen.net/contents/blog/?p=878
# https://news.ycombinator.com/item?id=23520240
PROMPT_COMMAND='printf "⏎%$((COLUMNS-1))s\\r\\033[K"'
