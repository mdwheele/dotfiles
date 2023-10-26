# Enable Bash Completions
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Per-project NPM Commands
PATH="$PATH:node_modules/.bin"

# GPG YubiKey
gpgconf --launch gpg-agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/dustin.wheeler/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
