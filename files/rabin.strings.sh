#!/bin/sh 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	echo "rabin2 -z $1 "
	rabin2 -z $1 
else
	echo "Example : ./rabin.strings.sh [TargetFile]" 
fi
