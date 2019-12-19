#!/bin/bash

if [ "Linux" == `uname` ]; then
	sudo apt-get -y install zsh
fi
chsh -s /usr/bin/zsh
