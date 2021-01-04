#/bin/zsh
if[ $1 != "completed" ]
    cat introduction.txt
endif

echo "Installing base System"
cp mirrorlist /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devle linux linux-firmware vim man-db man-pages texinfo wpa_supplicant wireless_tools netctl dialog
if[ $2 = "intel" ]
    pacstrap /mnt intel-ucode
endif

echo "Generating fstab"
genfstab -Lp /mnt > /mnt/etc/fstab

echo "Starting the System"
cp systemConfigure.sh /mnt/
arch-chroot /mnt /mnt/systemConfigur.sh
