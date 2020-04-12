#!/bin/bash

HOST=$(hostname)

CURRENTUSER=$(whoami)

CURRENTDATE=$(date +%D)

IPADDRESS=$(hostname -I | cut -d ' ' -f1)

echo "Today is $CURRENTDATE"
echo "Hostname: $HOST ($IPADDRESS)"
echo "User info for $CURRENTUSER:"
grep $CURRENTUSER /etc/passwd
