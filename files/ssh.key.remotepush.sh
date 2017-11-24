#!/bin/sh 

echo " _ create .ssh directory "
ssh $1 'mkdir .ssh; chmod 700 .ssh'

echo " _push id_rsa.pub"
cat ~/.ssh/id_rsa.pub | ssh $1 'cat >> .ssh/authorized_keys'
