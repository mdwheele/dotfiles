#!/bin/bash

git clone --bare git@github.com:mdwheele/dotfiles.git $HOME/.dotfiles

function config {
  /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

config config status.showUntrackedFiles no