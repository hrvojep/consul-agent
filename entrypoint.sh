#!/bin/bash
echo Your container args are: "$1 " "$2" 
consul agent -config-file=/consul/config/config-file.json $1 $2 &
nginx
