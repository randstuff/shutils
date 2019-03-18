#!/bin/bash -x 

# $1 : filePathx

if [ $# -eq 1 ] 
then 
	/sbin/iptables-restore < $1
else
	echo "Example : ./iptables.restore.rules.sh [filePath]" 
fi 


