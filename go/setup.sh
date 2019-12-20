#!/usr/bin/env bash
VERSION=1.13.5
OS=linux
if [ "Darwin" == `uname` ]; then
	OS=darwin
fi
ARCH=amd64
GO_TAR=go$VERSION.$OS-$ARCH.tar.gz

curl https://dl.google.com/go/$GO_TAR --output $GO_TAR
sudo tar -C /usr/local -xzf $GO_TAR
sudo chown `whoami`:admin /usr/local/go
echo "export PATH=/usr/local/go/bin:\$PATH" >> $HOME/.zshrc
mkdir -p $HOME/go
rm $GO_TAR 
