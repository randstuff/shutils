#!/bin/bash -x 


# $1 : interface 

if [ $# -eq 1 ] 
then
	sudo arp-scan -g -l -I $1 
else
	echo "Example : ./arp.scan.sh eth0 " 
fi 


