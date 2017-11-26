#!/bin/sh 

# $1 : user
# $2 : pwd 
# $3 : file 

if [ $# -eq 3 ] 
then
	echo "mysql -u$1 -p $2 < $3 " 
	mysql -u$1 -p $2 < $3 
else
	echo "Example : ./mysql.import.db.sh [user] [pwd] [dumpFile]"  
fi 

