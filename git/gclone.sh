#!/bin/bash
echo "Your GitHub repos:"
repos=($(gh repo list --limit 50 --json name -q '.[].name'))
for i in "${!repos[@]}"; do
    echo "  $((i+1))) ${repos[$i]}"
done
echo ""
read -p "Enter number: " NUM
REPO=${repos[$((NUM-1))]}
if [ -z "$REPO" ]; then
    echo "Invalid number."
    exit 1
fi
gh repo clone "Abdullahalmutairi97/$REPO" /mnt/c/Users/Abdul/code/$REPO
echo "✓ Cloned $REPO"
