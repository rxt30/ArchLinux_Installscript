#!/bin/sh

echo "-----Setting time to Berlin-----"
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
hwclock --systohc

echo "-----Generating locale from custom file---"
vim /systemConfig/config-Files/locale/locale.gen
cp /systemConfig/config-Files/locale/locale.gen /etc/locale.gen
locale-gen

echo "-----Setting locale from custom file-----"
vim /systemConfig/config-Files/locale/locale.conf
cp /systemConfig/config-Files/locale/locale.conf /etc/locale.conf

echo "-----Setting keyboard layout from custom file-----"
vim /systemConfig/config-Files/locale/vconsole.conf
cp /systemConfig/config-Files/locale/vconsole.conf /etc/vconsole.conf
