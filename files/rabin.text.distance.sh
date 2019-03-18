#!/bin/bash -x 


# $1 : TargetFile 

if [ $# -eq 2 ] 
then
	radiff2 -s $1 $2 
else
	echo "Example : ./rabin.text.distance.sh [File1] [File2]" 
fi


