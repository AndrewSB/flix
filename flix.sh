#!/bin/sh



if [ $1 ]
	then 
	SANITIZED=`echo $* | tr -d ' '`
	echo $SANITIZED
	# echo "calling peerflix"
	# URL="http://torrentproject.se/?s="$INPUT"&out=json"
	# curl -H GET $URL
else
	echo "flix - A simple convience search for peerflix"
	echo ""
	echo "peerflix [args]"
	echo "where args is a search term for the video you're looking for"
fi