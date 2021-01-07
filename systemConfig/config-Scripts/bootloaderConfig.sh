#!/bin/sh

echo "-----Running mkinitcpio-----"
vim ../config-Files/boot/mkinitcpio.conf
cp ../config-Files/boot/mkinitcpio.conf /etc/mkinitcpio.conf
mkinitcpio -p linux

echo "-----Installing bootloader-----"
bootctl install
vim ../config-Files/boot/arch.conf
cp ../config-Files/boot/arch.conf /boot/loader/entries/arch.conf
vim ../config-Files/boot/arch-fallback.conf
cp ../config-Files/boot/arch-fallback.conf /boot/loader/entries/arch-fallback.conf
vim ../config-Files/boot/loader.conf
cp ../config-Files/boot/loader.conf /boot/loader/loader.conf
bootctl update
