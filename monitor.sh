#!/bin/bash
# This is a variable that stores the current date
REPORT_DATE=$(date +%Y-%m-%d)
FILENAME="report_$REPORT_DATE.txt"

echo "--- SYSTEM HEALTH REPORT ---" > $FILENAME
date >> $FILENAME
echo "MEMORY USAGE:" >> $FILENAME
free -h >> $FILENAME
echo "DISK SPACE:" >> $FILENAME
df -h / >> $FILENAME

echo "Report generated: $FILENAME"

