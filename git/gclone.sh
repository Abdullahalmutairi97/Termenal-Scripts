#!/bin/bash
echo "Your GitHub repos:"
gh repo list --limit 50 | nl -w2 -s') '
echo ""
read -p "Repo name to clone (e.g. username/repo or just repo): " REPO
gh repo clone "$REPO" /mnt/c/Users/Abdul/code/$(basename "$REPO")
cd /mnt/c/Users/Abdul/code/$(basename "$REPO")
code .
echo "✓ Cloned and opened"
