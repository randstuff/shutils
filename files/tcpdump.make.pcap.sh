#!/bin/sh 

tcpdump src $1 and dst $2 -w file.pcap
