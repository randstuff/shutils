#!/bin/bash -x 


iptables -t nat -F
iptables -F
iptables -X 

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP 

#########################################################################

iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT 
iptables -A OUTPUT -m state --state NEW,RELATED,ESTABLISHED -j ACCEPT 

iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

#########################################################################

iptables -t filter -A INPUT -p ICMP --icmp-type echo-reply -j ACCEPT 
iptables -t filter -A OUTPUT -p ICMP --icmp-type echo-reply -j ACCEPT 

iptables -t filter -A INPUT -p ICMP --icmp-type echo-request -j ACCEPT 
iptables -t filter -A OUTPUT -p ICMP --icmp-type echo-request -j ACCEPT 

iptables -t filter -A INPUT -p tcp --dport 22 -j ACCEPT  
iptables -t filter -A OUTPUT -p tcp --dport 22 -j ACCEPT 

#iptables -t filter -A INPUT -p tcp -s [ip] --dport 6379 -j ACCEPT 
#iptables -t filter -A INPUT -p udp -s [ip] --dport 6379 -j ACCEPT 

#########################################################################

iptables -A FORWARD -i docker0 -o enp8s0 -j ACCEPT
iptables -A FORWARD -i enp8s0 -o docker0 -j ACCEPT


###
ip6tables -t nat -F
ip6tables -F
ip6tables -X 

ip6tables -P INPUT DROP
ip6tables -P FORWARD DROP
ip6tables -P OUTPUT DROP 

