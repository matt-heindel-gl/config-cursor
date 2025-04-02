# Cursor Configuration

Personal configuration files for the Cursor editor.

## Files

- `keybindings.json` - Custom key mappings
- `settings.json` - Editor preferences and settings
- `snippets/` - Custom code snippets

## Initial Setup

To create your own configuration repository:

1. Create a new directory for your config:

   ```bash
   mkdir -p ~/config-cursor && cd ~/config-cursor
   ```

2. Copy your current Cursor configuration:

   ```bash
   # Copy current config files
   cp "$HOME/Library/Application Support/Cursor/User/keybindings.json" .
   cp "$HOME/Library/Application Support/Cursor/User/settings.json" .
   mkdir -p snippets
   cp -r "$HOME/Library/Application Support/Cursor/User/snippets/"* snippets/ 2>/dev/null || true
   ```

3. Initialize git repository:

   ```bash
   git init
   git add .
   git commit -m "Initial commit: Add Cursor configuration files"
   ```

4. Push to GitHub (optional):
   ```bash
   # Create a new repository on GitHub first, then:
   git remote add origin https://github.com/YOUR_USERNAME/config-cursor.git
   git push -u origin main
   ```

## Migration to New Machine

1. Clone this repository:

   ```bash
   git clone https://github.com/YOUR_USERNAME/config-cursor.git ~/config-cursor
   ```

2. Run the setup script:
   ```bash
   ./setup.sh
   ```

The setup script will:

- Create necessary directories
- Create symbolic links from your Cursor config directory to this repository
- Back up any existing configuration files

## Making Changes

1. Make changes to the files in your `~/config-cursor` directory
2. Commit and push your changes:
   ```bash
   cd ~/config-cursor
   git add .
   git commit -m "Update configuration"
   git push
   ```

The symbolic links will ensure that Cursor always uses your latest configuration.
