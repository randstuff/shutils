#!/bin/sh 

# $1 : TargetFile 

if [ $# -eq 1 ] 
then
	echo "cat $1 | ./_tools/cacador/cacador "
	cat $1 | ./_tools/cacador/cacador 

else
	echo "Example : ./strings.cacador.sh [TargetFile] " 
fi
