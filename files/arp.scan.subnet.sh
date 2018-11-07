#!/bin/sh 

# $1 : interface 

if [ $# -eq 1 ] 
then
	sudo arp-scan $1 | grep -v -E "(Starting)|(Interface)|(packets)|(Ending)"

else
	echo "Example : ./arp.scan.sh eth0 " 
fi 


