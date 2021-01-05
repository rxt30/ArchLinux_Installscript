#!/bin/sh

echo "-----Setting time to Berlin-----"
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
hwclock --systohc

echo "-----Generating locale from custom file---"
cp ../config-Files/locale.gen /etc/locale.gen
locale-gen

echo "-----Setting locale from custom file-----"
cp ../config-Files/locale.conf /etc/locale.conf

echo "-----Setting keyboard layout from custom file-----"
cp ../config-Files/vconsole.conf /etc/vconsole.conf
