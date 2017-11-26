#!/bin/sh 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	echo "rabin2 -l $1 "
	rabin2 -l $1 
else
	echo "Example : ./rabin.libraries.sh [TargetFile]" 
fi
