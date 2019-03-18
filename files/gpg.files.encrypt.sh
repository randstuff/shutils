#!/bin/bash -x 

# $1 : Path

if [ $# -eq 1 ] 
then
	gpg -c $1 
else
	echo "Example : ./gpg.files.ecnrypt.sh [Path]" 
fi 

