#! /bin/sh
if [ ! -e "../init.lock" ]
then
	npm run install-server 
	touch ../init.lock
fi

if [ $1 ]
then
	node $i
else
	node server/app.js
fi
