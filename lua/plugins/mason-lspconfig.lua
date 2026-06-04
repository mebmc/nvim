-- LSP Support
return {
  -- LSP Configuration
  'williamboman/mason-lspconfig.nvim',
  event = 'VeryLazy',
  dependencies = {
    -- LSP Management
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Useful status updates for LSP
    { 'j-hui/fidget.nvim',                opts = {} },

    -- Additional lua configuration, makes nvim stuff amazing!
    { 'folke/neodev.nvim' },
    { 'b0o/schemastore.nvim' },
  },
  opts = {
    -- Install these LSPs automatically
    ensure_installed = {
      'ansiblels',
      'bashls', -- requires npm to be installed
      'biome',
      'cssls',  -- requires npm to be installed
      'docker_compose_language_service',
      'dockerls',
      'gopls',
      -- 'gradle_ls',
      'graphql',
      'html',         -- requires npm to be installed
      'intelephense', -- requires npm to be installed
      -- 'jqls',
      'jsonls',       -- requires npm to be installed
      -- 'lemminx',
      'lua_ls',
      -- 'marksman',
      -- 'pyre',
      'pyright',
      'quick_lint_js',
      'ruff',
      'solidity',
      'terraformls',
      'ts_ls',  -- requires npm to be installed
      'vimls',
      'yamlls', -- requires npm to be installed
    },
    inlay_hints = {
      enabled = false,
    },
    lsp = {
      formatting = {
        format_on_save = false,
      },
    },
  },
}
