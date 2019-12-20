#!/bin/bash

if [ "Darwin" == ${OS_NAME} ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    sudo apt-get -y update 
    sudo apt-get -y upgrade
fi
