#!/bin/bash
# Script 4: Log File Analyzer
# Author: TANISH KUMAR | Course: Open Source Software
# Usage: ./script.sh [logfile] [keyword]

LOGFILE=$1
# Default keyword is 'git' if not provided
KEYWORD=${2:-"git"} 
COUNT=0

# --- Retry Logic (Simulated Do-While) ---
# Checks if file exists and is not empty; if empty, it waits once and checks again
if [ -f "$LOGFILE" ] && [ ! -s "$LOGFILE" ]; then
    echo "File $LOGFILE is currently empty. Retrying in 2 seconds..."
    sleep 2
fi

# Final check for file existence
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- While-Read Loop ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Summary Display ---
echo "========================================"
echo "         Log Analysis Report"
echo "========================================"
echo "Target File : $LOGFILE"
echo "Keyword     : $KEYWORD"
echo "Total Hits  : $COUNT"
echo "----------------------------------------"

# --- Tail + Grep for specific Git activity ---
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching entries:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
else
    echo "No entries found for '$KEYWORD'."
fi
echo "========================================"
