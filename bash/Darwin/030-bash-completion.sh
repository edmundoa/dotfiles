# Completion for sudo command
complete -c -f command sudo

# Git completion script
if [ -f /opt/local/etc/bash_completion.d/git ]; then
  . /opt/local/etc/bash_completion.d/git
fi

complete -o default -o nospace -W "$(grep host < ~/.ssh/config | cut -d ' ' -f2)" scp ssh

# Rake completion script
# complete -C /opt/local/etc/bash_completion.d/rake-completion.rb -o default rake

