# Repository Guidelines

## Project Structure & Modules
- Root: `init.lua` bootstraps `lazy.nvim`, sets leader, and loads core modules.
- Core: `lua/core/` for config primitives — `options.lua`, `mappings.lua`, `autocmd.lua`, `polish.lua`.
- Plugins: `lua/plugins/*.lua` one plugin/spec per file (kebab-case), loaded by `lazy.nvim`.
- Archive: `lua/archive/` holds disabled plugin specs for reference/re-enabling.
- Filetype: `ftplugin/*.lua` overrides per language/filetype.
- Spelling: `spell/` custom wordlists; safe to update when adding terms.
- State: `lazy-lock.json` pins plugin versions; `logs/` contains runtime logs.

## Build, Test, and Development
- Install/sync plugins: `nvim --headless "+Lazy! sync" +qa`.
- Health checks: `nvim --headless "+checkhealth" +qa`.
- LSP/formatter tools (via Mason): `nvim --headless "+Mason" +qa` to verify installers.
- Run locally: `nvim` (loads this config). For isolated trials, copy repo to a temp app name and run `NVIM_APPNAME=nvim-test nvim`.
- Reload config: `:source %` for current file; plugin changes auto-reload (change_detection enabled). Restart after major `init.lua` or core edits.
- Troubleshooting: `:Lazy log`, `:messages`, and Mason UI logs in `:Mason`.

## Coding Style & Naming
- Language: Lua 5.1+ (Neovim). Indent with 2 spaces; no tabs.
- Files: plugin specs in `lua/plugins/<plugin-name>.lua` (kebab-case), core modules in `lua/core/<topic>.lua` (snake_case).
- Lua style: prefer `local` bindings, early returns, descriptive names; avoid one-letter vars.
- Formatting: keep tables and opts compact; do not hand-edit `lazy-lock.json`.

## Plugin Development
- Each `lua/plugins/*.lua` returns a Lazy.nvim spec table.
- Use `opts = { ... }` for simple setups; `config = function() ... end` for complex init.
- Keep one plugin per file; colocate related helpers if minimal.

## Keymaps Overview
- Leader: Space. Common groups — `b*` buffers, `g*` git, `s*` splits, `t*` tabs, `p*` plugin manager, `u*` toggles.
- LSP: `gd`/`gD` goto, `<leader>vf` format. Tmux nav on `<leader>h/j/k/l` and Alt-hjkl.

## Testing Guidelines
- Open Neovim and ensure no errors on startup.
- Run `:checkhealth` and fix warnings relevant to changed areas.
- For plugin changes: `:Lazy! sync` then validate keymaps (`:map <leader>`), commands, and UI.
- Treesitter: grammars auto-install for many languages; verify parser installs for any new filetypes you touch.

## Commits & Pull Requests (jj)
- Message: short, imperative subject; optional scope prefix (`core:`, `plugins:`, `ftplugin:`). Example: `plugins: add trouble.nvim config`.
- Create/change: `jj new` then edit files; set message with `jj describe -m "<message>"`.
- View history: `jj log -n 20` (use to verify scope and clarity).
- Branch for PR: `jj branch set <name> -r @` then `jj git push --remote origin --branch <name>`.
- Amend/fixups: keep a clean stack using `jj describe -m ...`, `jj squash`, or `jj move` as needed.
- PRs: open on your host (e.g., GitHub) from the pushed branch; include description, before/after screenshots for UI changes, repro steps, and relevant `:checkhealth` output when applicable.
- Lockfile: commit `lazy-lock.json` only when intentionally updating plugins.

## Security & Configuration Tips
- Do not commit secrets or machine-specific paths.
- Keep changes focused; avoid cross-cutting edits unless necessary.
- Prefer adding new plugin specs over modifying unrelated ones.

## jj Cheatsheet
- New change: `jj new` — create a change on top of current.
- Describe/amend: `jj describe -m "<msg>"` or `jj amend -m "<msg>"`.
- Status/diff: `jj status`; current change details with `jj show @`.
- History: `jj log -n 20` to review recent changes.
- Branch: `jj branch set <name> -r @`; list with `jj branch list`.
- Push: `jj git push --remote origin --branch <name>`.
- Sync from remote: `jj git fetch` then `jj git import`.
