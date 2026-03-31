#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="TANISH" 
SOFTWARE_CHOICE="Linux"
# Fetching the distribution name from os-release
DISTRO=$(grep ^PRETTY_NAME /etc/os-release | cut -d'"' -f2)
LICENSE="GNU GPLv2"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
USER_HOME=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

# --- Display ---
echo "========================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "OS Distro    : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $USER_HOME"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "----------------------------------------"
echo "This operating system is covered under the $LICENSE license."
echo "========================================"
