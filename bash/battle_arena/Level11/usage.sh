#!/bin/bash

THRESHOLD=80
TargetPath="/Users/momodou/Documents/dev-ops/bash/battle_arena/Level11/One1"
USAGE=$(df -h "$TargetPath" | awk 'NR==2 {print $5}' | tr -d '%')
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Alert: Disk usage exceeds $THRESHOLD%."
else
  echo "The Disk current usage is: $USAGE%, Disk usage is within the threshold."
fi
