#!/bin/bash

curl -i -s -k -X 'POST' \
    -j -c cookie-jar.txt \
    -H 'Referer: http://192.168.21.130/login.php' \
    -H 'Content-Type: application/x-www-form-urlencoded' \
    -H 'Upgrade-Insecure-Requests: 1' \
    --data-binary 'username=admin&password=admin&submit=+Login+' \
    'http://192.168.21.130/login.php'

curl -X 'TRACE' -b cookie-jar.txt http://192.168.21.130 
