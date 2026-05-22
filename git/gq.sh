#!/bin/bash
if [ -z "$(git rev-parse --git-dir 2>/dev/null)" ]; then
    echo "Not a git repo."
    exit 1
fi
read -p "Commit message: " MSG
if [ -z "$MSG" ]; then
    echo "Aborted."
    exit 1
fi
git add -A
git commit -m "$MSG"
git push
echo "✓ Pushed"
