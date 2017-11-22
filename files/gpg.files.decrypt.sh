#!/bin/sh 

if [ $# -ne 2 ]; then
	echo "Require two arguments! " 
    exit 1
fi

gpg --output $2 --decrypt $1 

