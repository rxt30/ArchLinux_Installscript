#!/bin/sh
export EDITOR=$1

echo "-----Initializing locals-----"
/systemConfig/config-Scripts/localsConfig.sh

echo "-----Initializing users-----"
/systemConfig/config-Scripts/userConfig.sh

echo "-----Initializing systemd-boot bootloader-----"
/systemConfig/config-Scripts/bootloaderConfig.sh

echo "-----Initializing network connection-----"
/systemConfig/config-Scripts/networkConfig.sh

echo "-----Installing Desktop Environment-----"
/systemConfig/config-Scripts/desktopEnvironmentConfig.sh
