echo "-----Installing needed services-----"
pacman -S acvpid ntp dbus avahi cups cronie
servicesArr = (acvpid ntp dbus avahi cups cronie)
for service in "${servicesArr[@]}"
do
    systemctl enable $service
done


echo "-----Installing xorg-----"
pacman -S xorg-server xorg-xinit xorg-drivers

echo "-----Installing KDE Plasma-----"
pacman -S plasma-desktop plasma-wayland-session

echo "-----Installing sddm-----"
pacman -S sddm sddm-kcm
systemctl enable sddm.service

echo "-----Installing browser,terminal emulator and file browser-----"
pacman -S firefox-developer-edition konsole dolphin

echo "-----Installing git and nodejs for vim plugins-----"
pacman -S git nodejs

echo "-----Installing nerd font mono-----"
pacman -S adobe-source-code-pro-fonts

localectl set-x11-keymap de pc105 nodeadkeys
echo "-----Installation has finished, to boot into a normal desktop environment simply reboot-----"
echo "-----If you liked this Arch-Installer Script, please consider to star it on github-----"
echo "-----If you found any issues or other improvements, please write a issue-----"
echo "-----Thanks for using this script-----"
