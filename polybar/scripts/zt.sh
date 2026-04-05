#!/usr/bin/env bash

iface=$(ip -o link show | awk -F': ' '{print $2}' | grep '^zt' | head -n1)

if [ -n "$iface" ]; then
    ip=$(ip -4 addr show "$iface" | awk '/inet / {print $2}' | cut -d/ -f1)
    echo " $ip"
else
    echo " N/A"
fi