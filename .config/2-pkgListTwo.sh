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

echo "CLONING: YAY"
git clone "https://aur.archlinux.org/yay.git"


PKGS=(

    # UTILITIES -----------------------------------------------------------

    'bleachbit'              # Screen locker
    'timeshift'                 # Backup and Restore

    # COMMUNICATIONS ------------------------------------------------------

    'firefox'                 # Firefox
	'steamtinkerlaunch'
	'gnome-boxes'

    # THEMES --------------------------------------------------------------


    # APPS ----------------------------------------------------------------

    'discord'                       # Chat for gamers
   

)

cd ${HOME}/yay
makepkg -si

# Change default shell
chsh -s $(which zsh)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

echo
echo "Done!"
echo
