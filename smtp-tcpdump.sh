#!/bin/sh

sudo tcpdump -vvvSAn -s1024 -i lo0 port 1025 and tcp and 'tcp[tcpflags] & tcp-push == tcp-push'
