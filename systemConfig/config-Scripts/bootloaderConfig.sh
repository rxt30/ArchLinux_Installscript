#!/bin/sh

echo "-----Running mkinitcpio-----"
$EDITOR /systemConfig/config-Files/boot/mkinitcpio.conf
cp /systemConfig/config-Files/boot/mkinitcpio.conf /etc/mkinitcpio.conf
mkinitcpio -p linux

echo "-----Installing bootloader-----"
bootctl install
$EDITOR /systemConfig/config-Files/boot/arch.conf
cp /systemConfig/config-Files/boot/arch.conf /boot/loader/entries/arch.conf
$EDITOR /systemConfig/config-Files/boot/arch-fallback.conf
cp /systemConfig/config-Files/boot/arch-fallback.conf /boot/loader/entries/arch-fallback.conf
$EDITOR /systemConfig/config-Files/boot/loader.conf
cp /systemConfig/config-Files/boot/loader.conf /boot/loader/loader.conf
bootctl update

echo "-----Configure File for encrypted drives-----"
$EDITOR /systemConfig/config-Files/crypttab
cp /systemConfig/config-Files/crypttab /etc/crypttab
