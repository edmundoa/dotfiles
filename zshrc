# Aliases
alias md5tree='find ./ -type f -print0 | xargs -0 md5sum'
alias ll='ls -l'
alias git='nocorrect git'

# OSX aliases
alias gitx="open -a /Applications/GitX.app/Contents/MacOS/GitX"
alias mplayer="mplayer -framedrop -cache 8192"

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/mysql-5.0.91-osx10.5-x86_64/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export EDITOR=vim

export KNIFE="env"

# Load RVM into a shell session *as a function*
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

export JRUBY_OPTS=--1.9

# add direnv
eval `direnv hook zsh`
