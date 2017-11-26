#!/bin/sh 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	echo "rabin2 -e $1 "
	rabin2 -e $1 

else
	echo "Example : ./rabin.entrypoint.sh [TargetFile]" 
fi 

