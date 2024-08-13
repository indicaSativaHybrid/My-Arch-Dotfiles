#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING AUR SOFTWARE"
echo

echo "Please enter username:"
read username

cd "${HOME}"

PKGS=(

    # UTILITIES -----------------------------------------------------------
    'timeshift'              # Backup and Restore
    'gparted'                # Partition Management Utilityd
    'octopi'                 # Pacman GUI tool
    'btop'                   # Terminal System Monitor tool
    'archlinux-tweak-tool-git' # Arch Multi Tool from arcolinux

    # General Softwaares ------------------------------------------------------

    'firefox'                 # Firefox Browser by Mozilla
	'protonplus'              # Gnome proton manager
	'gnome-boxes'             # Gnome VM manager
    'steam'                   # Gabe
    

    # DRIVERS --------------------------------------------------------------
    'vulkan-radeon'           # Vulkan Graphics API for AMD Radeon Graphics
    'lib32-vulkan-radeon'

    # APPS ----------------------------------------------------------------

    'discord'                       # Chat for gamers
   

)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

echo
echo "Done!"
echo
