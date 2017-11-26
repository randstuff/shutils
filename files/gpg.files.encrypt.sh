#!/bin/sh 

# $1 : Path

if [ $# -eq 1 ] 
then
	echo "gpg -c $1 \n\n" 
	gpg -c $1 
else
	echo "Example : ./gpg.files.ecnrypt.sh [Path]" 
fi 

