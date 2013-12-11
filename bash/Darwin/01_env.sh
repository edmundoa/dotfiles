alias gitx="open -a /Applications/GitX.app/Contents/MacOS/GitX"
alias mplayer="mplayer -framedrop -cache 8192"

if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
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

