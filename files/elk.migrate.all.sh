#!/bin/bash -x 


# $1 IPsource:port 
# $2 IPdst:port 
# $3 indexName 

if [ $# -eq 3 ] 
then
	for l in $(./elk.show.index.sh |grep logstash  | cut -d " " -f 5 | sort -u ) ; do echo $l && ./elk.migrate.sh 127.0.0.1:9200 127.0.0.1:9201 $l ; done
else
        echo "Example : ./elk.migrate.all.sh [ipSrc:port] [ipDst:port] index" 
fi 


