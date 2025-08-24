#!/bin/bash
# download_data.sh
# Script to download Rain-100L dataset from Kaggle

set -e  # stop on error

# Ensure kaggle is installed
if ! command -v kaggle &> /dev/null
then
    echo "The 'kaggle' command is not found."
    echo "Install it with: pip install kaggle"
    exit 1
fi

# Create data folder
mkdir -p data

echo "Downloading Rain-100L dataset from Kaggle..."
kaggle datasets download -d adeshpal/rain-100l -p data/

echo "Extracting dataset..."
unzip -q data/rain-100l.zip -d data/

echo "Done! Dataset available in ./data/Rain-100L"
