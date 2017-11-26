#!/bin/sh 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	echo "rabin2 -S $1"
	rabin2 -S $1
else
	echo "Example : ./rabin.section.sh [TargetFile]" 
fi
