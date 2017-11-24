#!/bin/sh 

# $1 dest IP 
# $2 dest Port
# $3 path file 

nc -w 3 $1 $2 < $3 


