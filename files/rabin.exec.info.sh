#!/bin/sh 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	echo "rabin2 -I $1 "
	rabin2 -I $1 
else
	echo "Example : ./rabin.exec.info.sh [TargetFile]" 
fi
