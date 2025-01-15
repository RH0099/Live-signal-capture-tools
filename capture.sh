#!/bin/bash

# Clear screen and display tool information
clear
echo "==========================================="
echo "🔥 Powerful Non-Root Network Scanner 🔥"
echo "==========================================="
echo "Developer :    <~{{ RH }}~> " 
echo "Team Name : 📿☝️Muslim Army☝️📿"
echo "==========================================="

# Check for Termux API availability
if ! command -v termux-wifi-scaninfo &> /dev/null
then
    echo "[!] Termux API not installed."
    echo "[*] Installing Termux API..."
    pkg install termux-api -y
    echo "[+] Termux API installed successfully."
fi

# Infinite loop for live network scanning
while true
do
    echo ""
    echo "🔍 Scanning nearby networks..."
    echo "==========================================="

    # Fetch Wi-Fi scan results
    scan_results=$(termux-wifi-scaninfo)

    # Parse and display formatted results
    echo "$scan_results" | jq -r '.[] | "\(.ssid)\t|\tSignal: \(.rssi)dBm\t|\tFrequency: \(.frequency)MHz"' | sort -k2

    echo "==========================================="
    echo "[*] Next scan will start in 5 seconds..."
    
    # Wait for 5 seconds before the next scan
    sleep 5

    # Clear screen for the next output
    clear
done
