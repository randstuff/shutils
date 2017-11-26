#!/bin/sh 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	echo "tcpdump -r $1 "
	tcpdump -r $1 
else
    echo "Example : ./tcpdump.read.pcap.sh [TargetFile]"
fi
