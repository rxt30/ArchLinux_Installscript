#!/bin/sh

echo "-----Running mkinitcpio-----"
vim /systemConfig/config-Files/boot/mkinitcpio.conf
cp /systemConfig/config-Files/boot/mkinitcpio.conf /etc/mkinitcpio.conf
mkinitcpio -p linux

echo "-----Installing bootloader-----"
bootctl install
vim /systemConfig/config-Files/boot/arch.conf
cp /systemConfig/config-Files/boot/arch.conf /boot/loader/entries/arch.conf
vim /systemConfig/config-Files/boot/arch-fallback.conf
cp /systemConfig/config-Files/boot/arch-fallback.conf /boot/loader/entries/arch-fallback.conf
vim /systemConfig/config-Files/boot/loader.conf
cp /systemConfig/config-Files/boot/loader.conf /boot/loader/loader.conf
bootctl update
