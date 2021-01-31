#!/bin/bash

#get current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# setup symlinks
ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/.vimfiles ~/.vimfiles
ln -s $DIR/.tmux.conf ~/.tmux.conf
ln -s $DIR/.zshrc ~/.zshrc

# .vim dir anlegen
if [ ! -d "~/.vim/" ];
then
    mkdir ~/.vim
    mkdir ~/.vim/bundle
    mkdir ~/.vim/files
    mkdir ~/.vim/files/swap
    mkdir ~/.vim/files/undo

    ln -s $DIR/.vimfiles/coc-settings.json ~/.vim/coc-settings.json
    ln -s $DIR/.vimfiles/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

    # Vundle installieren
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

    # checkout the release branch of coc.nvim
    cd ~/.vim/bundle/coc.nvim
    git checkout release
fi

# install tmux theme-pack
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
