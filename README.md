# Cursor Configuration

Personal configuration files for the Cursor editor.

## Files

- `keybindings.json` - Custom key mappings
- `settings.json` - Editor preferences and settings
- `snippets/` - Custom code snippets

## Migration to New Machine

1. Clone this repository:

   ```bash
   git clone https://github.com/matt-heindel-gl/config-cursor.git ~/config-cursor
   ```

2. Run the setup script:
   ```bash
   chmod +x ~/config-cursor/setup.sh && ./setup.sh
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
