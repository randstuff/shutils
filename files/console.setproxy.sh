#!/bin/bash -x 


# $1 : IP
# $2 : Port 

if [ $# -eq 2 ] 
then
	export HTTPS_PROXY=http://$1:$2
	export HTTP_PROXY=http://$1:$2
else
	echo "Example : ./console.setproxy.sh 127.0.0.1 8080 " 
fi 


