#!/bin/bash -x 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	rabin2 -S $1
else
	echo "Example : ./rabin.section.sh [TargetFile]" 
fi
