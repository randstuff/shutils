#!/bin/sh 


echo "sudo su -c 'ip6tables-save > /etc/iptables/rules.v6'" 
echo "sudo su -c 'iptables-save > /etc/iptables/rules.v4' \n\n" 
sudo su -c 'iptables-save > /etc/iptables/rules.v4'
sudo su -c 'ip6tables-save > /etc/iptables/rules.v6'

