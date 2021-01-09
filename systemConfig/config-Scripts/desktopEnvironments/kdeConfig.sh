echo "-----Installing KDE Plasma-----"
pacman -S plasma-desktop plasma-wayland-session


echo "-----Installing browser,terminal emulator and file browser-----"
pacman -S  konsole dolphin

localectl set-x11-keymap de pc105 nodeadkeys
