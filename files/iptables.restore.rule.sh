#!/bin/sh 

# $1 : filePathx

if [ $# -eq 1 ] 
then
	echo "/sbin/iptables-restore < $1 \n\n" 
	/sbin/iptables-restore < $1
else
	echo "Example : ./iptables.restore.rules.sh [filePath]" 
fi 


