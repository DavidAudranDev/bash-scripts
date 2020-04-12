#!/bin/bash

HOST=$(hostname)

CURRENTUSER=$(whoami)

CURRENTDATE=$(date '+%A %B %d of %Y')

CURRENTTIME=$(date '+%X %Z')

IPADDRESS=$(hostname -I | cut -d ' ' -f1)

SYSNAME=$(cat /etc/os-release | grep -w "NAME")

SYSVERSION=$(cat /etc/os-release | grep -w "VERSION")

KERNELNAME=$(uname -s)

KERNELRLS=$(uname -r)

OS=$(uname -o)

ARCHITECTURE=$(lscpu | grep -w "Architecture")

MODELNAME=$(lscpu | grep -w "Model name")

BYTEORDER=$(lscpu | grep -w "Byte Order")

HYPERVISORVENDOR=$(lscpu | grep -w "Hypervisor vendor")

echo "------------------------------"
echo "Today is $CURRENTDATE and time is $CURRENTTIME"
echo "------------------------------"
echo "Hostname: $HOST ($IPADDRESS)"
echo "------------------------------"
echo "User info for $CURRENTUSER:"
grep $CURRENTUSER /etc/passwd
echo "------------------------------"
echo "System info:"
echo -e "\t"$SYSNAME
echo -e "\t"$SYSVERSION
echo -e "\tKernel name: $KERNELNAME"
echo -e "\tKernel release: $KERNELRLS"
echo -e "\tOperating system: $OS"
echo -e "\tShell: "$SHELL
echo "------------------------------"
echo "CPU Info:"
echo -e "\t"$ARCHITECTURE
echo -e "\t"$MODELNAME
echo -e "\t"$BYTEORDER
echo -e "\t"$HYPERVISORVENDOR
echo "------------------------------"
