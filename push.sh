#!/bin/bash

# Auto-detect current branch and strip carriage returns/newlines
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\r\n')
if [ -z "$BRANCH" ]; then
    BRANCH="main"
fi

# Get current date in YYMMDD format
DATE=$(date +%y%m%d)

# Commit message handling
if [ -z "$1" ]; then
    echo "=== Git Auto Push Script ==="
    echo "Pilih tipe commit:"
    echo "1) Added (Fitur baru)"
    echo "2) Fixed (Bug fix)"
    echo "3) Changed (Perubahan non-bug)"
    echo "4) Security (Patch keamanan)"
    read -p "Masukkan pilihan (1-4): " CHOICE
    
    case $CHOICE in
        1) TYPE="Added" ;;
        2) TYPE="Fixed" ;;
        3) TYPE="Changed" ;;
        4) TYPE="Security" ;;
        *) TYPE="Changed" ;;
    esac
    
    read -p "Masukkan deskripsi commit: " DESC
    COMMIT_MSG="${DATE} - [${TYPE}]: ${DESC}"
else
    COMMIT_MSG="$1"
fi

echo "----------------------------------------"
echo "Menambahkan semua perubahan ke staging..."
git add .

echo "Melakukan commit: \"$COMMIT_MSG\""
git commit -m "$COMMIT_MSG"

echo "Melakukan push ke origin branch: $BRANCH..."
git push -u origin "$BRANCH"
echo "Selesai!"
