#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/.vimrc ~/.vimrc
echo "Added vimrc"

ln -s ${BASEDIR}/.vim/ ~/.vim
echo "Added vim"

# zsh
ln -s ${BASEDIR}/.zshrc ~/.zshrc
echo "Added zshrc"

# git
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig
echo "Added gitconfig"
