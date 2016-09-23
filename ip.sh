#!/bin/bash
cd c:/xampp/htdocs/ci

LASTIP=$(<ip.txt)

while [ true ]; do

	NEWIP=$(curl -s http://myip.dnsdynamic.org/)

	if [ "$LASTIP" != "$NEWIP" ]; then
		echo $NEWIP > ip.txt
		git commit -a -m "ip update"
		git push
		
		# inform someone about that update
	fi
	
	sleep 5m
done
