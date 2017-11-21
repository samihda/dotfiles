git clone --separate-git-dir=$HOME/.dotfiles https://github.com/samihda/dotfiles.git .dotfiles-tmp
rsync -rv --exclude '.git' .dotfiles-tmp/ $HOME/
rm -r .dotfiles-tmp

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no
