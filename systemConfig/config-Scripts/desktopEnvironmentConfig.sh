echo "-----Installing needed services-----"
pacman -S acpid ntp dbus avahi cups cronie
servicesArr=(acpid ntp dbus avahi cups cronie)
for service in "${servicesArr[@]}"
do
    systemctl enable $service done


echo "-----Installing xorg-----"
pacman -S xorg-server xorg-xinit 

lspci | grep VGA
echo "Please choose your graphic cards driver"
select driver in amd nvidia intel "All drivers"
do
    case $driver in
        amd)
            pacman -S xf86-video-amdgpu
            ;;
        intel)
            pacman -S xf86-video-intel
            ;;
        nvidia)
            pacman -S xf86-video-nouveau
            ;;
        "All drivers")
            pacman -S xorg-drivers
            ;;
        *)
            continue
            ;;
    esac
    break;
done

echo "-----Installing sddm-----"
pacman -S sddm sddm-kcm
systemctl enable sddm.service

echo "Please select your desktop environment to install"
select desktop in LXQt Xfce "KDE Plasma"
do
    case $desktop in
        LXQt)
            /systemConfig/config-Scripts/desktopEnvironments/LXQtConfig.sh
            ;;
        Xfce)
            /systemConfig/config-Scripts/desktopEnvironments/XfceConfig.sh
            ;;
        "KDE Plasma")
            /systemConfig/config-Scripts/desktopEnvironments/kdeConfig.sh
            ;;
        *)
            continue
            ;;
    esac
    break
done

echo "-----Installing firefox-developer-edition-----"
pacman -S firefox-developer-edition

echo "-----Installing git and nodejs for vim plugins-----"
pacman -S git nodejs

echo "-----Installing nerd font mono-----"
pacman -S adobe-source-code-pro-fonts

echo "-----Changing default layout to german layout-----"
localectl set-x11-keymap de pc105 deadgraveacute

echo "-----Installation has finished, to boot into a normal desktop environment simply reboot-----"
echo "-----If you liked this Arch-Installer Script, please consider to star it on github-----"
echo "-----If you found any issues or other improvements, please write a issue-----"
echo "-----Thanks for using this script-----"
