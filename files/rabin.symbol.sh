#!/bin/sh 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	echo "rabin2 -s $1 "
	rabin2 -s $1 
else
	echo "Example : ./rabin.symbol.sh [TargetFile]" 
fi
