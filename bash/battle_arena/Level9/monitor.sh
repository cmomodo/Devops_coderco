#!/bin/bash

# Directory to monitor
MONITOR_DIR="."

# Log file
LOG_FILE="monitor.log"

# Exclude list (paths to skip monitoring)
EXCLUDE_LIST=("./$LOG_FILE" "./monitor.sh")

# Build exclusion args for find
EXCLUDE_ARGS=()
for p in "${EXCLUDE_LIST[@]}"; do
    EXCLUDE_ARGS+=( -not -path "$p" )
done

# Temporary files
INITIAL_STATE=$(mktemp)
CURRENT_STATE=$(mktemp)
DIFF_FILE=$(mktemp)

# Function to log changes
log_change() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" >> "$LOG_FILE"
}

# Cleanup function
cleanup() {
    log_change "Monitoring stopped"
    rm -f "$INITIAL_STATE" "$CURRENT_STATE" "$DIFF_FILE"
    exit 0
}

# Set up signal handlers
trap cleanup SIGINT SIGTERM EXIT

# Get initial state (excluding monitor paths)
find "$MONITOR_DIR" "${EXCLUDE_ARGS[@]}" -type f -exec md5sum {} + | sort > "$INITIAL_STATE"

log_change "Monitoring started for directory: $MONITOR_DIR"

while true; do
# Get current state (excluding monitor paths)
    find "$MONITOR_DIR" "${EXCLUDE_ARGS[@]}" -type f -exec md5sum {} + | sort > "$CURRENT_STATE"

    # Compare states
    diff "$INITIAL_STATE" "$CURRENT_STATE" > "$DIFF_FILE"

    if [ -s "$DIFF_FILE" ]; then
        # Log changes
        while read -r change; do
            log_change "$change"
        done < "$DIFF_FILE"
    fi

    # Update initial state
    mv "$CURRENT_STATE" "$INITIAL_STATE"

    sleep 1
done
