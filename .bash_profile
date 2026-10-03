#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="${PATH}:${HOME}/bin:${HOME}/.local/bin:${HOME}/go/bin"

# consider uwsm?
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  echo "starting niri..."
  systemctl --user start niri.service
fi
