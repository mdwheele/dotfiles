# Enable Bash Completions
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Per-project NPM Commands
PATH="$PATH:node_modules/.bin"

# Docker Machine Environment
if command -v docker-machine > /dev/null; then
  # fetch the first running machine name
  machine=$(docker-machine ls | grep "Running" | head -n 1 | awk '{ print $1 }')
  if [ "$machine" != "" ]; then
    eval "$(docker-machine env $machine)"
  fi
fi

# GPG YubiKey
gpgconf --launch gpg-agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
