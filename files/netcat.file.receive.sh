#!/bin/sh 

# $1 listening port 
# $2 dest file 

nc -l -p $1 > $2
