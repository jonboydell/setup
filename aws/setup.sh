#!/usr/bin/env bash

LIMES_URL="https://github.com/otm/limes/releases/latest"

DOWNLOAD_URL="${LIMES_URL}/limes_linux_amd64"

if [ "Darwin" == `uname` ]; then
	DOWNLOAD_URL="${LIMES_URL}/limes_darwin_amd64"
fi

curl -L ${DOWNLOAD_URL} --output limes
chmod +x limes
mv limes /usr/local/bin/limes 

if [ "Linux" == `uname` ]; then
	setcap 'cap_net_bind_service=+ep' /usr/local/bin/limes
fi
