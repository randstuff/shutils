#!/bin/bash -x 
 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	rabin2 -s $1 $2 
else
	echo "Example : ./rabin.search.string.sh [TargetFile]" 
fi
