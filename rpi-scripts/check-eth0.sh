#!/bin/bash

cd "$(dirname "$0")"

INTERFACE=eth0

DURATION=60
START=$(date '+%Y-%m-%dT%H:%M:%S.%6N %Z')
NUM_PACKETS=$(/usr/bin/tshark -i $INTERFACE -a duration:$DURATION | wc -l)

echo $START,$NUM_PACKETS,$DURATION,$INTERFACE >> $INTERFACE-results.csv
