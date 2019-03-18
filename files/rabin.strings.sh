#!/bin/bash -x 
 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	rabin2 -z $1 
else
	echo "Example : ./rabin.strings.sh [TargetFile]" 
fi
