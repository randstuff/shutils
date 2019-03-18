#!/bin/bash -x 


# $1 : user
# $2 : pwd 
# $3 : file 

if [ $# -eq 3 ] 
then
	mysql -u$1 -p $2 < $3 
else
	echo "Example : ./mysql.import.db.sh [user] [pwd] [dumpFile]"  
fi 

