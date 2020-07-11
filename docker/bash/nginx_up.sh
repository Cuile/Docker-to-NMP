#!/bin/bash

docker-compose -f ../yml/nginx.yml up -d --build

iptables -A INPUT -p tcp -m multiport --dport 80,25 -j ACCEPT
