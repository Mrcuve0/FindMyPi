#!/bin/bash

if [ $# -lt 1 ]; then
 echo "ERROR: Must pass Network Interface as a parameter!"
 echo "Usage: sudo ./FMP.sh <Network_Interface_Name>"
 exit 0
fi

IFACE=$1

IP=$(ip addr show | grep $IFACE | grep inet | cut -d' ' -f6,8) 
IP_DEV=$(echo $IP | cut -d' ' -f1) 
IP_BRD=$(echo $IP | cut -d' ' -f2)

echo "Your IP address: $IP_DEV"
echo "Broadcast: $IP_BRD"

IP_NET=$(echo $IP_DEV | cut -d'/' -f2)
IP_DEV=$(echo $IP_DEV | cut -d'.' -f1-3)
IP_DEV="$IP_DEV.0/$IP_NET"
echo "Looking for your Raspberry in network: $IP_DEV"

RES=$(nmap -sP $IP_DEV | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}')

echo "Found Raspberry @ $RES"
echo "Goodbye!"

exit 0
