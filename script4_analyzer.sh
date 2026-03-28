#!/bin/bash
# Script 4: Log File Analyzer
# Concepts: while read loop, if-then, counter, command-line args

LOG_FILE=$1
KEYWORD=$2
COUNTER=0

# Check if arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: ./script4_analyzer.sh [file_path] [keyword]"
    exit 1
fi

# Check if file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File $LOG_FILE not found."
    exit 1
fi

echo "Analyzing $LOG_FILE for '$KEYWORD'..."

# Read line by line
while read -r line; do
    if echo "$line" | grep -q "$KEYWORD"; then
        ((COUNTER++))
    fi
done < "$LOG_FILE"

echo "------------------------------------------"
echo "Total occurrences of '$KEYWORD': $COUNTER"
echo "------------------------------------------"
