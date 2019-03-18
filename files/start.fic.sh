#!/bin/bash -x 

# $1 - [targeted files in directory] 

if [ $# -eq 1 ] 
then
    for f in $(find $1 -type f ) ;do md5sum $f ; done | md5sum 
else
    echo "Example : ./start.fic.sh [target]"  
fi
 


