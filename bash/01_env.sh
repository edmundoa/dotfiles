alias mygrep='grep --color -H -n -R'
alias md5tree='find ./ -type f -print0 | xargs -0 md5sum'
alias ll='ls -l'
alias be='bundle exec'
alias bi='bundle install'
alias less='less -X'

export EDITOR=vim
export JRUBY_OPTS=--1.9

export PATH="/usr/local/bin:$PATH"

if [ -d $HOME/Bin ]; then
  export PATH="$HOME/Bin:$PATH"
fi

# RVM
if [ -d "$HOME/.rvm" ]; then
  export PATH="$HOME/.rvm/bin:$PATH"
  [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
  [[ -r $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion
  rvm_silence_path_mismatch_check_flag=1
fi

# Rbenv
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

if [ -d /usr/local/heroku ]; then
  export PATH="$PATH:/usr/local/heroku/bin"
fi

# History customization
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTSIZE=10000000000
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "

