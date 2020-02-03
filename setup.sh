#!/bin/bash

#get current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# setup symlinks
ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/.vimfiles ~/.vimfiles
ln -s $DIR/.tmux.conf ~/.tmux.conf

# .vim dir anlegen
if [ ! -d "~/.vim" ]
then
    mkdir ~/.vim
    mkdir ~/.vim/bundle
    mkdir ~/.vim/files
    mkdir ~/.vim/files/swap
    mkdir ~/.vim/files/undo

    # Vundle installieren
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
fi

