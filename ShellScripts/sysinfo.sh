
#!/usr/bin/env bash
# Author: Vikansh Chaudhary
# Roll Number: 2601730036
# Purpose: Display system information report

echo "========================================"
echo "       SYSTEM INFORMATION REPORT"
echo "========================================"
echo "Name: Vikansh Chaudhary"
echo "Roll Number: 2601730036"
echo "Date: $(date)"
echo

echo "---------- CPU INFORMATION ----------"
CPU_MODEL=$(lscpu | awk -F: '/Model name/ {gsub(/^[ \t]+/, "", $2); print $2; exit}')
CPU_CORES=$(lscpu | awk -F: '/Core\(s\) per socket/ {gsub(/^[ \t]+/, "", $2); cores=$2} /Socket\(s\)/ {gsub(/^[ \t]+/, "", $2); sockets=$2} END {print cores*sockets}')
echo "CPU Model: $CPU_MODEL"
echo "Physical CPU Cores: $CPU_CORES"
echo

echo "---------- MEMORY INFORMATION ----------"
free -h | awk '/^Mem:/ {print "Total Memory: " $2 "\nUsed Memory: " $3}'
echo

echo "---------- TOP 3 PROCESSES BY CPU ----------"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 4
echo

echo "========================================"
echo "Report generated successfully."
echo "========================================"
