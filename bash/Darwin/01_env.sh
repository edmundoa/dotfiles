alias gitx="open -a /Applications/GitX.app/Contents/MacOS/GitX"
alias mplayer="mplayer -framedrop -cache 8192"
alias gh='git config --get remote.origin.url | awk -F: '\''{ gsub(".git","",$2); print "https://github.com/"$2 }'\'' | xargs open'
alias cask='brew cask'

if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  source /usr/local/share/bash-completion/bash_completion
fi

# Completion for sudo command
complete -c -f command sudo

export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/usr/local/go/bin"

export CLICOLOR=1 # for terminal colors
export GREP_OPTIONS='--color=auto'
export KNIFE="env"

# Include homebrew's python path
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

export JAVA_HOME=$(/usr/libexec/java_home)

export DOCKER_HOST=tcp://192.168.59.103:2375

export NVM_DIR=~/.nvm

if [ -f /usr/local/opt/nvm/nvm.sh ]; then
  source /usr/local/opt/nvm/nvm.sh
fi
