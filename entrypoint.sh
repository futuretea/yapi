#! /bin/sh
if [ ! -e "init.lock" ]
then
	ln -s ../config.json
	yapi install -v ${VERSION}
	touch init.lock
fi

if [ $1 ]
then
	node $i
else
	node server/app.js
fi