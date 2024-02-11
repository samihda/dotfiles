HISTSIZE=1000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth:erasedups
PS1="[\u@\h \W]\$ "

# https://github.com/akermu/emacs-libvterm
if [[ "$INSIDE_EMACS" = 'vterm' ]] \
    && [[ -n ${EMACS_VTERM_PATH} ]] \
    && [[ -f ${EMACS_VTERM_PATH}/etc/emacs-vterm-bash.sh ]]; then
	source ${EMACS_VTERM_PATH}/etc/emacs-vterm-bash.sh
fi
