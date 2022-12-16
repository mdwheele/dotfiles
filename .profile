#!/bin/bash
GPG_TTY=$(tty)
export GPG_TTY

export SSH_AUTH_SOCK=${HOME}/.gnupg/S.gpg-agent.ssh

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

alias clean-branch='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'

PATH="$PATH:node_modules/.bin"
PATH="$PATH:/opt/puppetlabs/bolt/bin"
PATH="$PATH:/Users/dustin.wheeler/Library/Python/3.8/bin"

# check if `docker-machine` command exists
if command -v docker-machine > /dev/null; then
  # fetch the first running machine name
  machine=$(docker-machine ls | grep "Running" | head -n 1 | awk '{ print $1 }')
  if [ "$machine" != "" ]; then
    eval "$(docker-machine env $machine)"
  fi
fi
