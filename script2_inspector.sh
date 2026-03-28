#!/bin/bash
# Script 2: FOSS Package Inspector
# Concepts: if-then-else, case statement, dpkg/grep

PACKAGE="vlc"

echo "Checking installation status for: $PACKAGE..."

# Check if package is installed (using dpkg for Debian/Ubuntu)
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    VERSION=$(dpkg -l $PACKAGE | grep $PACKAGE | awk '{print $3}')
    echo "SUCCESS: $PACKAGE is installed (Version: $VERSION)."
    
    # Case statement for description
    case $PACKAGE in
        "vlc")
            echo "Description: A versatile, open-source multimedia player that supports almost all codecs."
            ;;
        "firefox")
            echo "Description: A privacy-focused open-source web browser."
            ;;
        *)
            echo "Description: A generic open-source software package."
            ;;
    esac
else
    echo "FAILURE: $PACKAGE is not found on this system."
    echo "You can install it using: sudo apt install $PACKAGE"
fi
