#!/bin/bash

FULL_FORMAT=0

toggle_format() {
	FULL_FORMAT=$((1 - FULL_FORMAT))
}

trap toggle_format SIG1

while true; do
	if [ $FULL_FORMAT -eq 0]; then
		date + '{"text": "%H:%M"}'
	else
		date + '{text": "%a, %d, %b, %H:%M"}'
	fi
	sleep 1
done
