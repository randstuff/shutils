#!/bin/sh 


# $1 : index

if [ $# -eq 1 ] 
then

	echo "curl -XDELETE 'http://localhost:9200/'$1'/'\n\n"
	curl -XDELETE 'http://localhost:9200/'$1'/'
else
	echo "Example : ./elk.delete.index.sh logstash" 
fi 


