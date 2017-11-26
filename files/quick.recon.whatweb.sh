#!/bin/sh 

# $1 : Target 

if [ $# -eq 1 ] 
then
	echo "./_tools/WhatWeb/whatweb $1"
	./_tools/WhatWeb/whatweb $1
else
	echo "Example : ./quick.recon.whatweb.sh [Target]" 
fi 

