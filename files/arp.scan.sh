#!/bin/sh 

# $1 : interface 

if [ $# -eq 1 ] 
then
	echo "cmd : sudo arp-scan -g -l -I $1 \n\n "
	sudo arp-scan -g -l -I $1 
else
    echo "Specify one interface" 
	echo "Example : ./arp.scan.sh eth0 " 
fi 


