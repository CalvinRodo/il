#!/bin/sh

cat ~/incident-logs/*.log | grep 'TIMELINE' | awk -F'|' '{print $1 "|" $2 " " $4}'
