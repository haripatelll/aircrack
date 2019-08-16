#!/bin/bash
clear
echo Interface:
read interface
#interface=$(ifconfig | grep wl | cut -d ":" -f1)
airmon-ng start $interface
airmon-ng check kill
echo Monitor Mode:
read mon
#mon=$(ifconfig | grep wl | cut -d ":" -f1)