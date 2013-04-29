# If not running interactively, don't do anything
[ -z "$PS1" ] && return

function source_dir {
  dir=$1
  if [ -d "$dir" ] ; then
    for rc in $dir/* ; do
      [ -f "$rc" ] && source $rc
    done
  fi
}

export EDITOR=vim
export OS=$(uname)

source_dir "$HOME/.bash"
source_dir "$HOME/.bash/$OS"
source "$HOME/.liquidprompt/liquidprompt"
