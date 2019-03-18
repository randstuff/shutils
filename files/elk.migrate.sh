#!/bin/bash -x 


# $1 : srcIP:port 
# $2 : dstIP:port 
# $3 : indexName 


if [ $# -eq 3 ] 
then
	
	elasticdump \
	  --input=http://$1/$3 \
	  --output=http://$2/$3 \
	  --type=analyzer
	elasticdump \
	  --input=http://$1/$3 \
	  --output=http://$2/$3 \
	  --type=mapping
	elasticdump \
	  --input=http://$1/$3 \
	  --output=http://$2/$3 \
	  --type=data

else
	echo "Example : ./elk.migrate.sh [SrcIP:port] [DstIP:port] indexName" 
fi 



