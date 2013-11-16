eval "`dircolors -b`"
alias ls='ls --color=auto'
alias mplayer='mplayer -vo xv -framedrop'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

if [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
fi

if [ -x /usr/bin/javac ]; then
  export JAVA_HOME=$(readlink -f /usr/bin/javac | sed 's:/bin/javac::')
fi

if [ -d $HOME/.play ]; then
  export PATH=$PATH:$HOME/.play/play
fi

export DEBEMAIL=e.alvarezj@gmail.com
export DEBFULLNAME="Edmundo Alvarez Jimenez"

if [ -d $HOME/.gPodder ]; then
  export GPODDER_HOME=$HOME/.gPodder
  export GPODDER_DOWNLOAD_DIR=$HOME/Podcasts
fi

