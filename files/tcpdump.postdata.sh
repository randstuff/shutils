#!/bin/bash -x 
 

# $1 - [target port  in directory] 

if [ $# -eq 1 ] 
then
    tcpdump -i any port $1 -s 0 -A '(tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x504f5354)' 
else
    echo "Example : ./tcpdump.postdata.sh [targetedPort]"  
fi


