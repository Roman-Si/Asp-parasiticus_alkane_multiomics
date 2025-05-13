#!/bin/bash

PRIDE_FTP="https://ftp.pride.ebi.ac.uk/pride/data/archive/2025/05/PXD058271"
TARGET_DIR="data/MS"

# List of files to download
FILES=(
    "sdrf_openms_design_openms.mzTab.gz"
    "sdrf_openms_design_msstats_in.csv.gz"
    "apar_HaoContaminants.fasta.gz"
)

if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
fi

for FILE in "${FILES[@]}"; do
    FILE_URL="$PRIDE_FTP/$FILE"
    DEST_FILE="$TARGET_DIR/$FILE"
    
    echo "Downloading $FILE_URL to $DEST_FILE..."
    wget -q --show-progress -O "$DEST_FILE" "$FILE_URL"
    
    if [ $? -eq 0 ]; then
        echo "Downloaded: $DEST_FILE"
    else
        echo "Failed to download: $FILE_URL"
    fi
done

echo "All PRIDE downloads completed."
