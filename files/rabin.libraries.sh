#!/bin/bash -x 
 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	rabin2 -l $1 
else
	echo "Example : ./rabin.libraries.sh [TargetFile]" 
fi
