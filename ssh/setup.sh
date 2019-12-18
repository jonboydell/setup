#!/bin/bash

KEY_FILE=${1}

if [ -z "${KEY_FILE}" ]; then
    echo "Usage ./setup.sh KEY_FILE" && exit 1
fi

ssh-keygen -t rsa -b 2048 -f ${KEY_FILE} -q -N ""