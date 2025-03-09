#!/bin/bash
# This is a script to update the repositories and operating system for Arch based operating systems.
echo "Hello "$USER", your operating system and repositories will now be updated."
while true; do
    read -p "Do you wish to run the update command? " yn
    case $yn in
        [Yy]* ) sudo pacman -Sy; echo "Thanks for updating me."; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done