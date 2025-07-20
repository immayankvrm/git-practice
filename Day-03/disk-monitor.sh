#!/bin/bash

THRESHOLD=90
EMAIL="admin@example.com"  # fake for now

df -H | grep -vE '^Filesystem|tmpfs' | awk '{ print $5 " " $1 }' | while read output; do
  usage=$(echo $output | awk '{ print $1 }' | sed 's/%//g')
    partition=$(echo $output | awk '{ print $2 }')
      
        if [ $usage -ge $THRESHOLD ]; then
            echo "WARNING: Disk usage is above ${THRESHOLD}% on $partition ($usage%)"
                echo "Disk usage alert: $partition is at $usage%" >> disk_alert.log
                  fi
                  done
