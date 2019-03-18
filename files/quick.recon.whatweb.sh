#!/bin/bash -x 

# $1 : Target 

if [ $# -eq 1 ] 
then
	./_tools/WhatWeb/whatweb $1
else
	echo "Example : ./quick.recon.whatweb.sh [Target]" 
fi 

