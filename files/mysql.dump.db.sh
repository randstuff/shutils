#!/bin/bash -x 


# $1 : user 
# $2 : pwd  
# $3 : dump file 

if [ $# -eq 3 ] 
then
	mysqldump -u$1 -p $2 --all-database > $3 
else
	echo "Example : ./mysql.dump.db.sh [user] [pwd] [dumpFile] " 
fi 

