#!/bin/sh 

echo "sudo su -c 'iptables-save > /etc/iptables/rules.v4' \n\n" 
sudo su -c 'iptables-save > /etc/iptables/rules.v4'

