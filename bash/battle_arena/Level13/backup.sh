#!/bin/bash
SOURCE_DIR=/path/to/directory
BACKUP_DIR=/path/to/backup/directory
BACKUP_COUNT=5

# Create a backup
tar -czvf "$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$SOURCE_DIR"

# Rotate backups
find "$BACKUP_DIR" -name "backup_*.tar.gz" -type f -mtime +$BACKUP_COUNT -delete
