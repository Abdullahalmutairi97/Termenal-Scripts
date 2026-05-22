#!/bin/bash
TARGET="${1:-.}"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FOLDER=$(basename "$(realpath "$TARGET")")
OUTDIR="/mnt/c/Users/Abdul/code/backups"
OUTFILE="$OUTDIR/${FOLDER}_${TIMESTAMP}.zip"
mkdir -p "$OUTDIR"
zip -r "$OUTFILE" "$TARGET" && echo "✓ Backed up to $OUTFILE" || echo "✗ Failed"
