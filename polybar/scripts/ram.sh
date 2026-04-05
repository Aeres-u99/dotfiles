#!/usr/bin/env bash

read used total <<< $(free -h | awk '/Mem:/ {print $3, $2}')
echo " $used/$total"