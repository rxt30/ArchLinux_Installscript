#!/bin/sh

echo "-----Initializing locals-----"
./config-Scripts/localsConfig.sh

echo "-----Initializing users-----"
./config-Scripts/userConfig.sh

echo "-----Initializing systemd-boot bootloader-----"
./config-Scripts/bootloaderConfig.sh

echo "-----Initializing network connection-----"
./config-Scripts/networkConfig.sh

echo "-----Installing KDE-Desktop Environment-----"
./config-Scripts/kdeConfig.sh
