#!/bin/bash -x 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	rabin2 -s $1 
else
	echo "Example : ./rabin.symbol.sh [TargetFile]" 
fi
