#!/bin/bash
echo checking for updated ip...

cd c:/xampp/htdocs/ci
git pull -p
LASTIP=$(<ip.txt)

while [ true ]; do

	NEWIP=$(curl -s https://icanhazip.com/)

	if [ "$LASTIP" != "$NEWIP" ]; then
		echo $NEWIP > ip.txt
		git commit -a -m "ip updated"
		git push
		LASTIP=$NEWIP
		
		echo 
		echo ---ip updated---
		echo 
	fi

	sleep 5m
done
