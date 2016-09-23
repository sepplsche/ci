#!/bin/bash
cd c:/xampp/htdocs/ci

LASTIP=$(<ip.txt)

while [ true ]; do

	NEWIP=$(curl -s http://myip.dnsdynamic.org/)

	if [ "$LASTIP" != "$NEWIP" ]; then
		$NEWIP > ip.txt
		git commit -a -m "ip update 1"
		git push
	fi
	
	sleep 5m
done
