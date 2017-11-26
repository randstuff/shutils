#!/bin/sh 

# $1 IPsource:port 
# $2 IPdst:port 
# $3 indexName 


for l in $(./elk.show.index.sh |grep logstash  | cut -d " " -f 5 | sort -u ) ; do echo $l && ./elk.migrate.sh 127.0.0.1:9200 127.0.0.1:9201 $l ; done


#for l in $(./elk.show.index.sh |grep $3  | cut -d " " -f 5 | sort -u ) ; do echo $l && ./elk.migrate.sh $1 $2 $l ; done
