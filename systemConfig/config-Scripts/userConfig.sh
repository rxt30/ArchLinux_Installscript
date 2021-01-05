#!/bin/sh

echo "-----Setting hostname-----"
echo "Please enter the hostname"
read userInput
echo $userInput > /etc/hostname

echo "-----Changing root password-----"
passwd

echo "-----Adding normal User-----"
echo "Please enter the name for the user:"
read userInput
useradd -m -s /bin/zsh $userInput

echo "-----Changing password for the new user-----"
passwd $userInput
