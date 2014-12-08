#!/bin/sh

if [ $1 ]
	then 
	SANITIZED=`echo $* | tr ' ' +`
	echo $SANITIZED
	URL="http://fenopy.se/module/search/api.php?format=json&keyword="$SANITIZED
	RESPONSE=`curl -H GET $URL`
	MAGNET=`echo $RESPONSE | jq '.[0].magnet'`
	echo $MAGNET
else
	echo "flix - A simple convience search for peerflix"
	echo ""
	echo "peerflix [args]"
	echo "where args is a search term for the video you're looking for"
fi