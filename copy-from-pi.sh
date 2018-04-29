#!/bin/bash

cd "$(dirname "$0")"

rsync pi@192.168.1.14:/home/pi/speedcheck/transfer-results.csv ./
rsync pi@192.168.1.14:/home/pi/speedcheck/lan-results.csv ./
