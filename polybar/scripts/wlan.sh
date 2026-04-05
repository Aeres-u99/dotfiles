#!/usr/bin/env bash

ip=$(ip -4 addr show wlan0 | awk '/inet / {print $2}' | cut -d/ -f1)

[ -z "$ip" ] && echo " N/A" || echo " $ip"