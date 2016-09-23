#!/bin/bash
cd c:/xampp/htdocs/ci

while [ true ]; do

	curl http://myip.dnsdynamic.org/ > ip.txt

	git commit -a -m "ip update"
	git push
	
	sleep 5m
done
