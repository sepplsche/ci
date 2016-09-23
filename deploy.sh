#!/bin/bash
NAME=$1
DIR=$2

BASEDIR=c:/xampp/htdocs/skrupel
BRANCHDIR=$BASEDIR$DIR

if [ ! -d "$BRANCHDIR" ]; then
	git clone https://github.com/sepplsche/skrupel.git $BRANCHDIR
	
	if [ $NAME != "master" ]; then
		cd $BRANCHDIR
		sed -i "s/\$login=\"skrupel\"/\$login=\"skrupel-dev\"/g" inc.conf.php
		sed -i "s/\$password=\"skrupel\"/\$password=\"skrupel-dev\"/g" inc.conf.php
		sed -i "s/\$database=\"skrupel\"/\$database=\"skrupel-dev\"/g" inc.conf.php
	fi
fi

cd $BRANCHDIR
git stash
git checkout $NAME
git pull -p
git stash pop
