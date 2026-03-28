#!/bin/bash
# Script 3: Disk and Permission Auditor
# Concepts: for loop, df, ls -ld, awk

# List of important directories to audit
DIRECTORIES=("/home" "/etc" "/var/log" "/bin")

echo "==============================================================="
echo "DIR PATH          | SIZE    | OWNER    | PERMISSIONS"
echo "==============================================================="

for dir in "${DIRECTORIES[@]}"; do
    if [ -d "$dir" ]; then
        # Extracting size using df
        SIZE=$(df -h "$dir" | awk 'NR==2 {print $3}')
        
        # Extracting owner and permissions using ls and awk
        OWNER=$(ls -ld "$dir" | awk '{print $3}')
        PERMS=$(ls -ld "$dir" | awk '{print $1}')
        
        printf "%-17s | %-7s | %-8s | %-12s\n" "$dir" "$SIZE" "$OWNER" "$PERMS"
    else
        echo "$dir does not exist or is not a directory."
    fi
done
echo "==============================================================="
