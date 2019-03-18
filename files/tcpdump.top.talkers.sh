#!/bin/bash -x 


# $1 - interface 

if [ $# -eq 1 ] 
then
	sudo tcpdump -tnn -c 2048 -i $1  | awk -F "." '{print $1"."$2"."$3"."$4}' | sort  | uniq -c  | sort -nr | grep "IP "
else
	echo "Example : ./tcpdump.top.talkers.sh [Interface]" 
fi
