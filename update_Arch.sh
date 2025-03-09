#!/bin/bash
# This is a script to update the repositories and operating system for Arch based operating systems.
echo "Hello "$USER", your operating system and repositories will now be updated."
while true; do
    read -p "Do you wish to run the update command? " yn
    case $yn in
        [Yy]* ) sudo pacman -Syu; echo "Thanks for updating me."; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you want to force a database refresh? " yn
    case $yn in
        [Yy]* ) sudo pacman -Syyu; echo "Thanks for refreshing the database."; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac

while true; do
    read -p "Do you want to clean the package cache? " yn
    case $yn in
        [Yy]* ) sudo pacman -Sc; echo "Thanks for cleaning the package cache."; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you want to remove orphaned packages? " yn
    case $yn in
        [Yy]* ) sudo pacman -Rns $(pacman -Qtdq); echo "Thanks for removing orphaned packages."; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "All done. Have a great day!"
exit 0