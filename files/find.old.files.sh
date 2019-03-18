#!/bin/bash -x 



# $1 : path 

if [ $# -eq 1 ] 
then
	find $1 -type f -mtime +30
else
	echo "Example : ./find.old.file.sh [path]" 
fi 


