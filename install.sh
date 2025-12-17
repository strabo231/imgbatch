#!/bin/bash
set -e
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="imgbatch"
REPO_URL="https://raw.githubusercontent.com/strabo231/imgbatch/main/imgbatch"

echo "📸 ImgBatch Installer"
echo ""

if [ "$EUID" -ne 0 ] && [ ! -w "$INSTALL_DIR" ]; then
    INSTALL_DIR="$HOME/.local/bin"
    mkdir -p "$INSTALL_DIR"
fi

if command -v curl &> /dev/null; then
    curl -sSL "$REPO_URL" -o "/tmp/$SCRIPT_NAME"
else
    wget -q "$REPO_URL" -O "/tmp/$SCRIPT_NAME"
fi

chmod +x "/tmp/$SCRIPT_NAME"
[ -w "$INSTALL_DIR" ] && mv "/tmp/$SCRIPT_NAME" "$INSTALL_DIR/" || sudo mv "/tmp/$SCRIPT_NAME" "$INSTALL_DIR/"

echo "✓ ImgBatch installed!"
echo ""
echo "Install dependencies:"
echo "  Ubuntu: sudo apt install imagemagick exiftool"
echo "  macOS:  brew install imagemagick exiftool"
