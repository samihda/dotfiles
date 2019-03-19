#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="${HOME}/bin:${PATH}"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec sway
fi
