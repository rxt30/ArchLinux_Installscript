#/bin/zsh
if[ $1 != "completed" ]
    cat introduction.txt
endif

echo "Installing base System"
cp mirrorlist /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel linux linux-firmware
pacstrap /mnt vim man-db man-pages texinfo 

echo "Install tools for wireless connection? [y/n]"
read -q installDecision
if [ $installDecision = "y" ] 
then
    pacstrap /mnt wpa_supplicant wireless_tools netctl dialog
fi

echo "Install tools for encrypted partitions? [y/n]"
read -q installDecision
if [ $installDecision = "y" ]
then
    pacstrap /mnt dosfstools gptfdisk lvm2
fi

echo "Install intel ucode? [y/n]"
read -q installDecision
if [ $installDecision = "y"]
then
    pacstrap /mnt intel-ucode
fi

echo "Generating fstab"
genfstab -Lp /mnt > /mnt/etc/fstab

echo "Starting the System"
cp systemConfigure.sh /mnt/
#arch-chroot /mnt /mnt/systemConfigur.sh
arch-chroot /mnt
