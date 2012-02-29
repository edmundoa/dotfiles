#!/bin/bash

NERDTREE_REPO="https://github.com/scrooloose/nerdtree.git"
NERDTREE_PATH="$HOME/.dotfiles/vim/bundle/nerdtree"

for file in $(ls $HOME/.dotfiles/); do
    if [ ! -e "$HOME/.$file" ]; then
        ln -sf $HOME/.dotfiles/$file $HOME/.$file
    fi
done

if [ "$(ls -A $NERDTREE_PATH)" ]; then
  echo "NERDTree seems to be already installed"
else
  echo "Cloning NERDTree for vim..."
  git clone $NERDTREE_REPO $NERDTREE_PATH
fi
