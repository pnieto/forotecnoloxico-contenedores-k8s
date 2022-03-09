#!/bin/bash

echo "Press [CTRL+C] to stop.."
while :
do
    curl http://192.168.49.2:31000
    echo ""
    sleep 1
done
