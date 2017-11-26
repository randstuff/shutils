#!/bin/sh 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	echo "rabin2 -s $1 $2 "
	rabin2 -s $1 $2 
else
	echo "Example : ./rabin.search.string.sh [TargetFile]" 
fi
