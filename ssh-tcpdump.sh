#!/bin/sh
sudo tcpdump -vvvSAn -s1024 -i en0 port 22 and tcp and 'tcp[tcpflags] & tcp-push == tcp-push'
