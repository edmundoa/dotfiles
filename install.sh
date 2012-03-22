#!/bin/bash

NERDTREE_REPO="https://github.com/scrooloose/nerdtree.git"
NERDTREE_PATH="$HOME/.dotfiles/vim/bundle/nerdtree"
RUBYTEST_REPO="https://github.com/janx/vim-rubytest.git"
RUBYTEST_PATH="$HOME/.dotfiles/vim/bundle/vim-rubytest"

for file in $(ls $HOME/.dotfiles/); do
    if [ ! -e "$HOME/.$file" ]; then
        ln -sf $HOME/.dotfiles/$file $HOME/.$file
    fi
done

echo "Cloning plugins for vim..."
git clone $NERDTREE_REPO $NERDTREE_PATH
git clone $RUBYTEST_REPO $RUBYTEST_PATH

