#!/bin/bash -x 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	rabin2 -e $1 

else
	echo "Example : ./rabin.entrypoint.sh [TargetFile]" 
fi 

