#!/bin/bash

# debian / ubuntu only | execute this script using sudo

echo -e "\e[1;46m Starting system maintenance script...\e[0m"

echo -e "\t\e[1;32m Executing: apt-get update\e[0m"
apt-get update

echo -e "\t\e[1;32m Executing: apt-get upgrade -y\e[0m"
apt-get upgrade -y

echo -e "\t\e[1;32m Executing: apt-get -y autoremove\e[0m"
apt-get -y autoremove

echo -e "\t\e[1;32m Executing: apt-get autoclean\e[0m"
apt-get autoclean

echo -e "\t\e[1;32m Executing: apt-get dist-upgrade\e[0m"
apt-get dist-upgrade

echo -e "\e[1;46mScript Terminated\e[0m"
