#!/bin/bash -x 
 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	rabin2 -I $1 
else
	echo "Example : ./rabin.exec.info.sh [TargetFile]" 
fi
