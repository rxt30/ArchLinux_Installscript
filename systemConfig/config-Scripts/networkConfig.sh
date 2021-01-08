#!/bin/sh
pacman -S dhcpcd
echo "Please select a interface to use for the connection (wireless interfaces usually start with w)"
select networkInterface in $(ip -brief link | awk '{print $1}')
do
    echo "Do you want to setup a wireless connection now? [y/n]"
    read  userDecision
    if [ $userDecision = "y" ]
    then
        ip link set $networkInterface down
        wifi-menu -o $networkInterface
        systemctl enable netctl-auto@$networkInterface
    fi
    dhcpcd $networkInterface
    break;
done
systemctl enable dhcpcd
