#!/usr/bin/env bash

# Root partition usage
usage=$(df -h / | awk 'NR==2 {print $5}')

echo " $usage"