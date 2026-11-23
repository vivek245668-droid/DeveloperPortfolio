
#!/usr/bin/env bash
# Author: Vikansh Chaudhary
# Roll Number: 2601730036
# Purpose: Create a compressed backup of a folder

set -euo pipefail

if [ "$#" -ne 1 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE_DIR="$1"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: folder does not exist: $SOURCE_DIR"
    exit 1
fi

SOURCE_DIR=$(realpath "$SOURCE_DIR")
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE="$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"

if tar -czf "$ARCHIVE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"; then
    SIZE=$(du -h "$ARCHIVE" | awk '{print $1}')

    echo "Backup created successfully!"
    echo "Backup file: $ARCHIVE"
    echo "Backup size: $SIZE"

    printf '%s | SUCCESS | %s | %s\n' \
        "$(date '+%Y-%m-%d %H:%M:%S')" \
        "$SOURCE_DIR" "$ARCHIVE" >> "$BACKUP_DIR/backup.log"
else
    echo "Error: backup failed."
    printf '%s | FAILED | %s\n' \
        "$(date '+%Y-%m-%d %H:%M:%S')" \
        "$SOURCE_DIR" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
