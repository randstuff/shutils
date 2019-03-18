#!/bin/bash -x 
 


# $1 : index

if [ $# -eq 1 ] 
then
	for ll in $(for l in $(./elk.show.index.sh); do echo $l ; done | grep $1); do curl -XDELETE 'http://localhost:9200/'$ll'/' ; done
else
        echo "Example : ./elk.delete.index.like.sh logstash" 
fi 


