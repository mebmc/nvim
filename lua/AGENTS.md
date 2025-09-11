# Repository Guidelines

This repository contains a modular Neovim configuration written in Lua. It is organized for clarity and safe iteration, with plugin specs split per file and core settings centralized.

## Project Structure & Module Organization
- `core/`: Editor defaults and behavior (`options.lua`, `mappings.lua`, `autocmd.lua`, `polish.lua`).
- `plugins/`: One file per plugin, returning a Lazy.nvim spec (e.g., `nvim-lspconfig.lua`, `conform.lua`).
- `archive/`: Disabled or experimental plugin specs kept for reference.
- Location: This folder is `~/.config/nvim/lua`. An `init.lua` lives one level up and requires these modules.

## Build, Test, and Development Commands
- `:Lazy sync`: Install/update plugins and regenerate lockfile.
- `:Lazy check`: Validate plugin state and detect issues.
- `:Mason`: Manage LSP/DAP/formatters.
- `:checkhealth`: Run Neovim/plugin health checks.
- `:TSUpdate`: Update Treesitter parsers.
- Reload a changed module: `:luafile %` (or restart Neovim).

## Coding Style & Naming Conventions
- Indentation: Lua uses 2 spaces (`shiftwidth=2`, `expandtab`).
- Filenames: For plugin specs, mirror upstream repo names (e.g., `nvim-treesitter.lua`). Use snake_case for local helpers.
- Prefer explicit `require(...)` paths under `core` and `plugins`.
- Formatting: `conform.nvim` configured (e.g., `stylua` for Lua, `shfmt` for shell, `ruff_format` for Python). Toggle autoformat via `vim.g.autoformat`.

## Testing Guidelines
- Launch and verify: start Neovim and watch for errors.
- Run `:checkhealth` and `:Lazy check`; confirm no warnings.
- LSP/formatting: open a Lua/Python file and check diagnostics/format-on-save.
- Regressions: make small, isolated changes; reload with `:luafile %`.

## Commit & Pull Request Guidelines
- Commits: Use Conventional Commits where possible (e.g., `feat(core): add yaml folds`, `fix(plugins): guard lazy-load on filetype`). Keep changes scoped.
- PRs: Include a brief summary, rationale, before/after notes, and testing steps (commands used and files opened). Screenshot of `:checkhealth` output is helpful when relevant.
- Avoid committing secrets or machine-specific paths; prefer settings behind feature flags or safe defaults.

## Security & Configuration Tips
- Do not hardcode tokens or SSH paths. If needed, gate with env checks and document in the PR.
- Prefer non-destructive defaults; keep experimental specs in `archive/` until proven stable.
