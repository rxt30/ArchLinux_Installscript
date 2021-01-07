#!/bin/sh
echo "Please select a interface to use for the connection (wireless interfaces usually start with w)"
select networkInterface in $(ip -brief link | awk '{print $1}')
read -p "Do you want to setup a wireless connection now? [y/n]" userDecision
if [ $userDecision = "y" ]
do
    ip link set $networkInterface down
    wifi-menu -o $networkInterface
    systemctl enable netctl-auto@$networkInterface
done
dhcpcd $networkInterface
systemctl enable dhcpcd
