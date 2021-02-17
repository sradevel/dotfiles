#!/bin/bash

#get current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir -p ~/.config/nvim

# setup symlinks
ln -s $DIR/.init.vim ~/.config/init.vim
ln -s $DIR/.tmux.conf ~/.tmux.conf
ln -s $DIR/.zshrc ~/.zshrc
ln -s $DIR/.aliases ~/.aliases


# install tmux theme-pack
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
