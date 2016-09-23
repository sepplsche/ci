#!/bin/bash
echo checking for updated ip...

cd c:/xampp/htdocs/ci

LASTIP=$(<ip.txt)

while [ true ]; do

	NEWIP=$(curl -s http://myip.dnsdynamic.org/)

	if [ "$LASTIP" != "$NEWIP" ]; then
		echo $NEWIP > ip.txt
		git commit -a -m "ip updated"
		git push
		LASTIP=$NEWIP
	fi

	sleep 5m
done
