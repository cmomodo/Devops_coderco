#!/bin/bash
SOURCE_DIR="/Users/momodou/Documents/dev-ops/bash/battle_arena/Level13/united"
BACKUP_DIR="/Users/momodou/Documents/dev-ops/bash/battle_arena/Level13/chelsea"
BACKUP_COUNT=5

# Create a backup
tar -czvf "$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$SOURCE_DIR"

# Rotate backups
find "$BACKUP_DIR" -name "backup_*.tar.gz" -type f -mtime +$BACKUP_COUNT -delete
