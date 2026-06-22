# Repository Guidelines

## Project Structure & Module Organization

This repository is a personal Neovim configuration based on `nvim-starter-kit`.
`init.lua` bootstraps `lazy.nvim`, sets the leader key, loads plugin specs from
`lua/plugins/`, and then loads core modules from `lua/core/`.

- `lua/core/`: editor behavior such as options, mappings, autocmds, LSP helpers,
  and final polish.
- `lua/plugins/`: one Lua file per plugin area, such as completion, formatting,
  LSP, colorscheme, and file picker configuration.
- `lazy-lock.json`: locked plugin versions; update intentionally after plugin
  changes.
- `spell/`: custom spelling additions.

## Build, Test, and Development Commands

There is no build step. Validate changes by starting Neovim with this config:

```sh
nvim
```

Useful Neovim commands:

```vim
:Lazy sync
:Lazy check
:checkhealth
:messages
```

Use `:Lazy sync` after changing plugin specs or lockfile state. Use
`:checkhealth` and `:messages` to catch runtime, provider, and plugin errors.

## Coding Style & Naming Conventions

Lua files use two-space indentation and return plain plugin spec tables where
applicable. Prefer single quotes for strings, matching the existing code. Keep
plugin concerns separated by file in `lua/plugins/`; add a new file only when a
configuration area is distinct enough to justify it.

Format Lua with `stylua` when available:

```sh
stylua init.lua lua/
```

Keep mappings, options, and autocmds in their existing `lua/core/` modules rather
than embedding them in unrelated plugin files.

## Testing Guidelines

No automated test framework is configured. For changes, perform a smoke test by
opening Neovim, checking startup errors, and exercising the affected feature.
For plugin changes, run `:Lazy check` and confirm `lazy-lock.json` changes are
expected. For LSP or formatter updates, open a representative filetype and verify
the server or formatter attaches correctly.

## Change & Pull Request Guidelines

Use `jj` for source control. Inspect work with:

```sh
jj status
jj diff
jj log --limit 12
```

Set change descriptions with short imperative summaries, for example
`Update plugins`, `Reset plugins`, and `Add typescript to lsp config`. Follow
that style: keep the first line concise and describe the changed area.

Pull requests should include a brief description, affected modules, manual
validation performed, and screenshots only for visible UI changes such as themes,
completion menus, or picker behavior.

## Agent-Specific Instructions

Before editing, check `jj status` for user changes and avoid rewriting unrelated
config. Keep changes narrow, preserve the existing module layout, and do not
update `lazy-lock.json` unless plugin versions are intentionally changed.
