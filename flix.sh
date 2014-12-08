#!/bin/sh



if [ $1 ]
	then 
	NAME=$1
	echo $NAME
	echo "calling peerflix"
	curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://torrentproject.se/?s=ubuntu+dvd&out=json
else
	echo "flix - A simple convience search for peerflix"
	echo ""
	echo "peerflix [args]"
	echo "where args is a search term for the video you're looking for"
fi