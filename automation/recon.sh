#!/bin/bash

domain=$1
timestamp=$(date +%F_%H-%M-%S)
output=~/bugbounty/recon/$domain/$timestamp

mkdir -p "$output"
logfile="$output/recon_$domain.log"

# Log all output to both screen and log file
exec > >(tee -a "$logfile") 2>&1

echo "[*] Starting recon for: $domain"
echo "[*] Output will be saved in: $output"
echo "[*] Timestamp: $timestamp"
echo "-----------------------------------------"

echo "[*] Running Subfinder..."
subfinder -d "$domain" -o "$output/subs.txt"

echo "[*] Probing with HTTPx..."
httpx -l "$output/subs.txt" -o "$output/alive.txt"

echo "[*] Pulling Wayback URLs..."
cat "$output/subs.txt" | waybackurls > "$output/wayback.txt"

echo "[*] Running Nuclei scans..."
nuclei -l "$output/alive.txt" -o "$output/nuclei.txt"

echo "-----------------------------------------"
echo "[*] Recon Complete"

# Summary
echo "[*] Summary:"
echo "  - Subdomains found:   $(wc -l < "$output/subs.txt")"
echo "  - Live hosts:         $(wc -l < "$output/alive.txt")"
echo "  - Wayback URLs:       $(wc -l < "$output/wayback.txt")"
echo "  - Nuclei findings:    $(wc -l < "$output/nuclei.txt")"
echo "[*] Log file saved to:  $logfile"
