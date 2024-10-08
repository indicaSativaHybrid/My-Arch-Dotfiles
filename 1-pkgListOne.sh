#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo
##

#### SOURCE OF SCRIPT --> https://github.com/rickellis/ArchMatic

##

PKGS=(

    # SYSTEM --------------------------------------------------------------

  

    # TERMINAL UTILITIES --------------------------------------------------

    'cmatrix'                 # The Matrix screen animation
    'cronie'                  # cron jobs
    'curl'                    # Remote content retrieval
    'file-roller'              # Archive utility
    'gtop'                    # System monitoring via terminal
    'gufw'                    # Firewall manager
    'hardinfo'                # Hardware info app
    'htop'                    # Process viewer
    'neofetch'                # Shows system info when you launch terminal
    'ntp'                     # Network Time Protocol to set time via network.
    'numlockx'                # Turns on numlock in X11
    'p7zip'                   # 7z compression program
    'rsync'                   # Remote file sync utility
    'speedtest-cli'           # Internet speed via terminal
    'terminus-font'           # Font package with some bigger fonts for login terminal
    'unrar'                   # RAR compression program
    'unzip'                   # Zip compression program
    'wget'                    # Remote content retrieval
    'terminator'              # Terminal emulator
    'micro'                   # KDE Terminal text editor.
    'zenity'                  # Display graphical dialog boxes via shell scripts
    'zip'                     # Zip compression program


    # GENERAL UTILITIES ---------------------------------------------------

    'nautilus'              # Filesystem browser
    'variety'               # Wallpaper changer
    'clamav'                # Anti-virus
    'bleachbit'               # File deletion utility
    # DEVELOPMENT ---------------------------------------------------------

    'gedit'                 # Text editor
    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'code'                  # Visual Studio Code
    'electron'              # Cross-platform development using Javascript
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'python'                # Scripting language
    'yarn'                  # Dependency management (Hyper needs this)

    # MEDIA ---------------------------------------------------------------

    # PRODUCTIVITY --------------------------------------------------------

    'hunspell'              # Spellcheck libraries
    'hunspell-en'           # English spellcheck library
    'xpdf'                  # PDF viewer

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
