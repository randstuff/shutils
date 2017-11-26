#!/bin/sh 


# $1 : Path

if [ $# -eq 1 ] 
then
	echo "find $1 -type f -mtime -7" 
	find $1 -type f -mtime -7
else
	echo "Example : ./find.recent.files.sh [path]" 
fi 

