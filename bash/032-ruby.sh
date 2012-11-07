# Enable rvm completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# Load RVM into a shell session *as a function*
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

export JRUBY_OPTS=--1.9
