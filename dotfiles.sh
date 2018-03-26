#!/bin/bash

git clone --separate-git-dir=$HOME/.dotfiles https://github.com/samihda/dotfiles.git .dotfiles-tmp

rm -rf $HOME/.dotfiles-tmp/.git
cp -R $HOME/.dotfiles-tmp/. $HOME/
rm -rf $HOME/.dotfiles-tmp/

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
