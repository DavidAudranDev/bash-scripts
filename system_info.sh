#!/bin/bash

HOST=$(hostname)

CURRENTUSER=$(whoami)

CURRENTDATE=$(date '+%A %B %d of %Y')

CURRENTTIME=$(date '+%X %Z')

IPADDRESS=$(hostname -I | cut -d ' ' -f1)

echo "Today is $CURRENTDATE and time is $CURRENTTIME"
echo "Hostname: $HOST ($IPADDRESS)"
echo "User info for $CURRENTUSER:"
grep $CURRENTUSER /etc/passwd
