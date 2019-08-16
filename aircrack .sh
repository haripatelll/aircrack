#!/bin/bash
clear
echo Interface:
read interface
airmon-ng start $interface
airmon-ng check kill
echo Monitor Mode:
read mon
airodump-ng $mon
echo BSSID
read bid
echo $bid
echo Channel
read chnl