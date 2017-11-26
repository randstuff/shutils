#!/bin/sh 

# $1 : index

if [ $# -eq 1 ] 
then
	echo -n $1 | sha1sum 
else
	echo "Example : ./hash.string.sha1.sh [string]" 
fi 

