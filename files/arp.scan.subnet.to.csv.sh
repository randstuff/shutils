#!/bin/sh 

# $1 : interface 

if [ $# -eq 1 ] 
then
	sudo arp-scan $1 | grep -v -E "(Starting)|(Interface)|(packets)|(Ending)"  | sed 's/\t/;/g' >> out.csv

else
	echo "Example : ./arp.scan.sh eth0 " 
fi 


