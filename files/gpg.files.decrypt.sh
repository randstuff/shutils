#!/bin/sh 

# $1 : inputPath 
# $2 : outputPath 

if [ $# -eq 2 ] 
then
	gpg --output $2 --decrypt $1 
else
	echo "Example : ./gpg.file.decrypt.sh [inputPath] [outputPath]"  
fi 

