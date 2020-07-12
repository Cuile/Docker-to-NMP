#!/bin/bash

docker-compose -f ../yml/nginx.yml down

iptables -D INPUT -p tcp -m multiport --dport 80,25,110 -j ACCEPT
