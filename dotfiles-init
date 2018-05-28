#!/usr/bin/env bash

cd || exit 1

git clone --separate-git-dir=.dotfiles https://github.com/samihda/dotfiles.git .dotfiles-tmp

rm -rf .dotfiles-tmp/.git
cp -R .dotfiles-tmp/. ./ # WARNING: may override existing files
rm -rf .dotfiles-tmp/

alias dotfiles='/usr/bin/git --git-dir=.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
