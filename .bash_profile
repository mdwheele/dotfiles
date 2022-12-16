[[ -s ~/.profile ]] && source ~/.profile

export BASH_SILENCE_DEPRECATION_WARNING=1

complete -C /usr/local/bin/terraform terraform

export CLOUDSDK_PYTHON=/usr/bin/python3 

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dustin.wheeler/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dustin.wheeler/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dustin.wheeler/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dustin.wheeler/Downloads/google-cloud-sdk/completion.bash.inc'; fi

[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
   export GPG_AGENT_INFO
else
   eval $( gpg-agent --daemon ) &
fi
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
