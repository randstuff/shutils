#!/bin/bash -x 
 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	cat $1 | ./_tools/cacador/cacador 
else
	echo "Example : ./strings.cacador.sh [TargetFile] " 
fi
