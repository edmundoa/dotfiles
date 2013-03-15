if [ -d $HOME/bin ]; then
  export PATH=$PATH:$HOME/bin
fi

if [ -d /usr/local/heroku ]; then
  export PATH=$PATH:/usr/local/heroku/bin
fi

if [ -x /usr/bin/javac ]; then
  export JAVA_HOME=$(readlink -f /usr/bin/javac | sed 's:/bin/javac::')
fi

if [ -d $HOME/.play ]; then
  export PATH=$PATH:$HOME/.play/play
fi

export DEBEMAIL=e.alvarezj@gmail.com
export DEBFULLNAME="Edmundo Alvarez Jimenez"


export GPODDER_HOME=$HOME/.gPodder
export GPODDER_DOWNLOAD_DIR=$HOME/Podcasts
