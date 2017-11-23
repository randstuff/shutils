#!/bin/sh 

# $1 - interface 

sudo tcpdump -tnn -c 2048 -i $1  | awk -F "." '{print $1"."$2"."$3"."$4}' | sort  | uniq -c  | sort -nr | grep "IP "

