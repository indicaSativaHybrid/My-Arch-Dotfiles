#!/bin/bash

# # # # #
# Source of this script is from this user.
# # # # #
# https://gist.github.com/donfreiday/ec7c4947a419bee90ae50783fc033913
# # # # #
        
sudo pacman -Syu
mkdir /tmp/yay
cd /tmp/yay
curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
makepkg -si
cd
rm -rf /tmp/yay
yay --version