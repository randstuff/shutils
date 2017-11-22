#!/bin/bash 

#export HTTPS_PROXY=http://127.0.0.1:3128
#export HTTP_PROXY=http://127.0.0.1:3128

export HTTPS_PROXY=http://$1:$2
export HTTP_PROXY=http://$1:$2

