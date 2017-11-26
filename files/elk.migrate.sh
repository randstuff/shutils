#!/bin/sh 

# $1 : srcIP:port 
# $2 : dstIP:port 
# $3 : indexName 


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
