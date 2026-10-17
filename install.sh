#!/bin/bash

# Installation script for proxy-sh
set -e

INSTALL_DIR="${HOME}/.local/bin"
SCRIPT_URL="https://raw.githubusercontent.com/11233321323/proxy-sh/main/pxy"

echo "Installing proxy-sh..."

# Create bin directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Download the script
curl -fsSL "$SCRIPT_URL" -o "$INSTALL_DIR/pxy"

# Make it executable
chmod +x "$INSTALL_DIR/pxy"

# Check if ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo ""
    echo "⚠️  $INSTALL_DIR is not in your PATH"
    echo "Add this line to your shell config (~/.bashrc, ~/.zshrc, etc):"
    echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
else
    echo "✓ $INSTALL_DIR is already in PATH"
fi

echo "✓ Installation complete!"
echo "Usage: pxy"
