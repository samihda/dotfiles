HISTFILE=~/.histfile
HISTSIZE=1000
HISTSAVE=1000
bindkey -e

autoload -Uz compinit promptinit
compinit
promptinit

prompt walters

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
