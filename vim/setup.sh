#!/bin/bash

OS_NAME=`uname`

if [ "Darwin" == ${OS_NAME} ]; then
    xcode-select --install
    brew install cmake macvim
else
    sudo apt-get install -y vim cmake build-essential python3-dev
fi

mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc

mkdir -p ~/.config/powerline/themes/vim
cp powerline_themes_vim_default.json ~/.config/powerline/themes/vim/default.json
