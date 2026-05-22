#!/bin/bash
PROJECTS_DIR="/mnt/c/Users/Abdul/code"
mkdir -p "$PROJECTS_DIR"
read -p "Repo name: " REPO_NAME
read -p "Description: " DESC
read -p "Private? (y/n): " PRIV
if [[ "$PRIV" == "y" ]]; then
    VISIBILITY="--private"
else
    VISIBILITY="--public"
fi
gh repo create "$REPO_NAME" --description "$DESC" $VISIBILITY --clone --gitignore Node
mv "$REPO_NAME" "$PROJECTS_DIR/$REPO_NAME"
code "$PROJECTS_DIR/$REPO_NAME"
echo "✓ Done"
