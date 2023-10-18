#!/bin/bash

default_route=$(ip route | grep default)

interface=$(echo "$default_route" | awk '{print $5}')
bytes_sent=$(cat /sys/class/net/$interface/statistics/tx_bytes)
echo "Bytes Sent: $bytes_sent"
