#!/bin/bash -x 
 

# $1 : string

if [ $# -eq 1 ] 
then
	echo -n $1 | md5sum 
else
	echo "Example : ./hash.string.md5.sh [string]" 
fi 


