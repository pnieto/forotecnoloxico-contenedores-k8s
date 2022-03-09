#!/bin/bash

echo "Press [CTRL+C] to stop.."
while :
do
    curl -k https://echo.test
    sleep 1
done
