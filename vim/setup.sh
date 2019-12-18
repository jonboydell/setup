#!/bin/bash

xcode-select --install
brew install cmake macvim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc $HOME/.vimrc

mkdir -p ~/.config/powerline/themes/vim
cp powerline_themes_vim_default.json ~/.config/powerline/themes/vim/default.json
