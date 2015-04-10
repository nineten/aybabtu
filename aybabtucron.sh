#!/bin/bash
if ps -ef | grep -v grep | grep aybabtu.sh ; then
	echo "aybabtu already running"
	exit 0
else
	echo "starting aybabtu"
	source $1/aybabtu.sh &
	exit 0
fi
