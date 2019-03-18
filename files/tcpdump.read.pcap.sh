#!/bin/bash -x 


# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	tcpdump -r $1 
else
	echo "Example : ./tcpdump.read.pcap.sh [TargetFile]"
fi
