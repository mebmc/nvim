# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a modern Neovim configuration using Lazy.nvim as the plugin manager. The configuration follows a modular structure with clear separation of concerns:

### Core Structure
- **`init.lua`**: Entry point that bootstraps Lazy.nvim and loads core modules
- **`lua/core/`**: Core configuration modules loaded outside of lazy loading
  - `options.lua`: Vim options and settings (tabs, search, appearance, etc.)
  - `mappings.lua`: Key bindings and shortcuts
  - `autocmd.lua`: Autocommands for various events
  - `polish.lua`: Final configuration tweaks
- **`lua/plugins/`**: Plugin configurations (54+ plugins) using Lazy.nvim spec format
- **`lua/archive/`**: Disabled/archived plugin configurations
- **`ftplugin/`**: Filetype-specific configurations
- **`spell/`**: Custom spell dictionaries

### Plugin Management
- Uses **Lazy.nvim** for plugin management with automatic lazy loading
- Plugins are organized as individual files in `lua/plugins/`
- Each plugin file returns a Lazy.nvim specification table
- Archive folder contains disabled plugins for easy re-enabling

### Key Plugin Categories
- **LSP**: nvim-lspconfig with Mason for LSP server management
- **Completion**: nvim-cmp with multiple sources
- **Fuzzy Finding**: Telescope with multiple extensions
- **Syntax**: Treesitter with extensive language support
- **Git**: Multiple git integration plugins
- **UI**: Status line, notifications, and visual enhancements

## Common Development Tasks

### Plugin Management
```bash
# Open Lazy.nvim interface
:Lazy

# Install plugins
:Lazy install

# Update plugins
:Lazy update

# Sync plugins (clean + update)
:Lazy sync
```

### LSP and Mason
```bash
# Open Mason interface to manage LSP servers
:Mason

# LSP servers are auto-installed via mason-lspconfig
# Configuration in lua/plugins/nvim-lspconfig.lua:21-47
```

### Key Mappings Structure
- **Leader key**: Space (`<leader>` = ` `)
- **File operations**: `<leader>f*` (find files, live grep, etc.)
- **Buffer management**: `<leader>b*` and `gb`/`gB` for navigation
- **Git operations**: `<leader>g*` 
- **Window/split management**: `<leader>s*`
- **Terminal**: `<leader>r*` and `<leader>\` / `<leader>|` for tmux integration
- **LSP**: Standard `gd`, `gD` for definitions, `<leader>vf` for formatting

### Configuration Updates
- Plugins are automatically reloaded when files change (change_detection enabled)
- Use `:source %` to reload current config file
- Restart Neovim after major changes to `init.lua` or core modules

### Treesitter Languages
Extensive language support pre-configured including: Lua, Python, JavaScript/TypeScript, Go, Rust, C/C++, HTML/CSS, JSON, YAML, Markdown, and many others. Auto-installation enabled for new filetypes.

### Common File Locations
- Plugin configurations: `lua/plugins/<plugin-name>.lua`
- Core settings: `lua/core/<module>.lua`
- LSP server configs: `lua/plugins/nvim-lspconfig.lua`
- Key mappings: `lua/core/mappings.lua`
- Plugin lock file: `lazy-lock.json`

### Plugin Development
- Create new plugin files in `lua/plugins/`
- Follow the Lazy.nvim specification format
- Return a table with plugin URL and configuration
- Use `opts` table for simple configurations
- Use `config` function for complex setups

### Troubleshooting
- Check `:checkhealth` for system issues
- Use `:Lazy log` to view plugin installation logs  
- Check `:messages` for error messages
- Mason logs available in `:Mason` interface