#!/bin/bash


LOG_FILE="cpu_load_log.txt"


echo "I'm recording your CPU Load. (Press Ctrl+C for STOPPING!)"
while true; do
    CURRENT_TIME=$(date +"%Y-%m-%d %H:%M:%S")
    
    CPU_LOAD=$(top -l 1 | grep "CPU usage" | awk '{print $3}')

    echo "$CURRENT_TIME - CPU Load: $CPU_LOAD" >> "$LOG_FILE"

    sleep 1
done
