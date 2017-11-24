#!/bin/sh 


mysqldump -u $1 -p $2 > db_backup.sql


