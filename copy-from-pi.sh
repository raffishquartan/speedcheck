#!/bin/bash

cd "$(dirname "$0")"

REMOTE_IP=rpi_3e5ccf

rsync pi@$REMOTE_IP:/home/pi/speedcheck/transfer-results.csv ./
rsync pi@$REMOTE_IP:/home/pi/speedcheck/eth0-results.csv ./
rsync pi@$REMOTE_IP:/home/pi/speedcheck/wlan1-results.csv ./
