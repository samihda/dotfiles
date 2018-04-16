#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  # see /usr/share/wayland-sessions/sway-custom.desktop
  exec sway-custom
fi
