#!/bin/bash

cd "$(dirname "$0")/.." || exit 1

LOG="logs/Mamadaliev_Daulatbek_system_report.log"

{
echo "===================================="
echo "DevOps Midterm - System Report"
echo "===================================="
echo "Student: Mamadaliev Daulatbek"
echo "Group: IT-2 2309"
echo "Date: $(date)"
echo "Username: $(whoami)"
echo "Operating System:"
cat /etc/os-release | head -5
echo "Kernel: $(uname -r)"
echo ""
echo "CPU Information:"
lscpu | head -10
echo ""
echo "Memory Information:"
free -h
echo ""
echo "Disk Usage:"
df -h /
echo ""
echo "Available Disk Space:"
df -h / | tail -1
echo "===================================="
} | tee -a "$LOG"
