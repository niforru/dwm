#!/bin/bash

interface="wlan0"  # Change this to your desired network interface

# Check if the specified network interface exists
if [ ! -d "/sys/class/net/$interface" ]; then
    echo "Network interface $interface does not exist."
    exit 1
fi

calculate_bytes_transmitted() {
    interface="$1"
    tx_bytes=$(ss -tin | awk -v iface="$interface" '$4 == iface && $1 == "ESTAB" {sum+=$2} END {print sum}')

    tx_megabytes=$(echo "scale=2; $tx_bytes / 1048576" | bc)

    echo "Uploaded: $tx_megabytes MB"
}

calculate_bytes_transmitted "$interface"