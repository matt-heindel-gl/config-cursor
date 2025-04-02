#!/bin/bash

# Define the Cursor config directory
CURSOR_CONFIG_DIR="$HOME/Library/Application Support/Cursor/User"

# Create symbolic links
echo "Creating symbolic links..."

# Ensure the Cursor config directory exists
mkdir -p "$CURSOR_CONFIG_DIR"

# Link keybindings
ln -sf "$HOME/config-cursor/keybindings.json" "$CURSOR_CONFIG_DIR/keybindings.json"

# Link settings
ln -sf "$HOME/config-cursor/settings.json" "$CURSOR_CONFIG_DIR/settings.json"

# Link snippets directory
if [ -d "$CURSOR_CONFIG_DIR/snippets" ]; then
    mv "$CURSOR_CONFIG_DIR/snippets" "$CURSOR_CONFIG_DIR/snippets.backup"
fi
ln -sf "$HOME/config-cursor/snippets" "$CURSOR_CONFIG_DIR/snippets"

echo "Setup complete! Cursor configuration files have been linked."