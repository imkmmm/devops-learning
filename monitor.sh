#!/bin/bash
echo "--- SYSTEM HEALTH REPORT ---" > health_report.txt
date >> health_report.txt
echo "MEMORY USAGE:" >> health_report.txt
free -h >> health_report.txt
echo "DISK SPACE:" >> health_report.txt
df -h / >> health_report.txt
echo "Report generated!"
