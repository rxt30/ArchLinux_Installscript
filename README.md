# ArchLinux_Installscript
A simple install script, which guides through the installation process, until you have a (hopefully) working Arch-System with a Desktop Environment

## Features
* Usage of systemd-boot boot manager
* Installation of a desktop environment (KDE Plasma, LXQt, Xfce)
* Customization of configuration files during the installation process
* Usage of encrypted Partitions possible

## Usage
For more information about connecting via a wireless interface and partition/mounting the drives read the **instruction.txt** first
1. Connect to the internet
2. Create partitions and mount them
3. Clone the repository with ```curl -LJO https://github.com/rxt30/ArchLinux_Installscript/tarball/master```
4. Extract the tar-File ```tar -xvf DOWNLOADED_TAR_ARCHIVE```
5. ```cd ArchLinux_Installscript```
6. Start the Installation with ```./mainScript.sh complete```
7. After the installation has finished, simply reboot the system
