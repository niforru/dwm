#!/bin/bash

default_route=$(ip route | grep default)

interface=$(echo "$default_route" | awk '{print $5}')
bytes_received=$(cat /sys/class/net/$interface/statistics/rx_bytes)
echo "Bytes Received: $bytes_received"
