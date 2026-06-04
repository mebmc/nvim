return {
  'stevearc/conform.nvim',
  lazy = false,
  opts = {
    format_on_save = function(bufnr)
      -- Disable with a global or buffer-local variable
      if vim.g.autoformat or vim.b[bufnr].disable_autoformat then
        return { timeout_ms = 1500, lsp_format = 'fallback' }
      end
    end,

    formatters_by_ft = {
      bash = { 'shfmt' },
      fish = { 'fish_indent' },
      go = { 'gofmt', 'goimports' },
      javascript = { 'biome' },
      lua = { 'stylua' },
      python = { 'ruff_format' },
      terraform = { 'terraform' },
      typescript = { 'biome' },
      yaml = { 'yamlfmt' },
    },

    formatters = {
      shfmt = {
        prepend_args = function(self, ctx)
          return { '-i', '4' }
        end,
      },
    },
  },
}
