#!/bin/bash -x 


# $1 : Target 

if [ $# -eq 1 ] 
then
	dig +noall +answer A $1 
	dig +noall +answer MX $1 
	dig +noall +answer NS $1 
	dig +noall +answer -x $1 
else
	echo "Example : ./quick.recon.sh [Target]"  
fi 


