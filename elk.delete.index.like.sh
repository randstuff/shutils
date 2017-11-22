#!/bin/sh 


for ll in $(for l in $(./elk.show.index.sh); do echo $l ; done | grep $1); do curl -XDELETE 'http://localhost:9200/'$ll'/' ; done


