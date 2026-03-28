#!/bin/bash
# Script 1: System Identity Report
# Name: Arushi Srivastava (24BOE10019)
# Description: Displays system information like OS distribution, kernel version, user details, uptime, and the governing open-source license.
# Concepts: Variables, Echo, Command Substitution, Formatting

# Gathering system data
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d'=' -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$USER
HOME_DIR=$HOME
UP_TIME=$(uptime -p)
DATE_TIME=$(date)

# Defining the OS License (Common for Linux Kernels/Distros)
OS_LICENSE="GNU General Public License (GPL) v2.0"

echo "=========================================="
echo "      LINUX SYSTEM IDENTITY REPORT        "
echo "=========================================="
echo "OS Distribution:  $DISTRO"
echo "Kernel Version:   $KERNEL"
echo "Current User:     $USER_NAME"
echo "Home Directory:   $HOME_DIR"
echo "System Uptime:    $UP_TIME"
echo "Current Date:     $DATE_TIME"
echo "------------------------------------------"
echo "Legal Notice: This OS is covered by the $OS_LICENSE."
echo "=========================================="
