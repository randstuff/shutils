#!/bin/sh 

# $1 : interface 

sudo arp-scan -g -l -I $1 
