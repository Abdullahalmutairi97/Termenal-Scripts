#!/bin/bash
TARGET="${1:-.}"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FOLDER=$(basename "$(realpath "$TARGET")")
OUTFILE="/mnt/c/Users/Abdul/code/backups/${FOLDER}_${TIMESTAMP}.zip"
mkdir -p /mnt/c/Users/Abdul/code/backups
zip -r "$OUTFILE" "$TARGET"
echo "✓ Backed up to $OUTFILE"
