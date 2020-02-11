#! /bin/sh
if [ ! -e "../initlock/1" ]
then
	npm run install-server
	touch ../initlock/1
fi

if [ $1 ]
then
	node $i
else
	node server/app.js
fi
