#!/bin/bash -x 

# $1 : SrcIP 
# $2 : DstIP 
# $3 : OutputFile 

if [ $# -eq 3 ] 
then
	tcpdump src $1 and dst $2 -w $3
else
	echo "Example : ./tcpdump.make.pcap.sh [SrcIP] [DstIP] [outputFile] " 
fi

