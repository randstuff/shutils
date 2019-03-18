#!/bin/bash -x 



# $1 : index

if [ $# -eq 1 ] 
then
	curl -XDELETE 'http://localhost:9200/'$1'/'
else
	echo "Example : ./elk.delete.index.sh logstash" 
fi 


