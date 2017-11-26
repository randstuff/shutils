#!/bin/sh 

# $1 listening port 
# $2 dest file 

if [ $# -eq 2 ] 
then
	echo "nc -l -p $1 > $2 " 
	nc -l -p $1 > $2 
else
	echo "Example : ./netcate.file.receive.sh [ListeningPort] [DstFile]" 
fi 

