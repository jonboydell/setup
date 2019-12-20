#!/usr/bin/env bash

if [ "Darwin" == `uname` ]; then
	brew install python
	pip3 install virtualenv
fi
