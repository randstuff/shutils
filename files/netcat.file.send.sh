#!/bin/bash -x 


# $1 dest IP 
# $2 dest Port
# $3 path file 

nc -w 3 $1 $2 < $3 


if [ $# -eq 3 ]  
then
	nc -w 3 $1 $2 < $3 
else
	echo "Example : ./netcat.file.send [DstIP] [DstPort] [TargetFile]" 
fi 

