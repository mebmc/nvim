return {
  'stevearc/conform.nvim',
  opts = {
    format_on_save = function(bufnr)
      -- Disable with a global or buffer-local variable
      if vim.g.autoformat or vim.b[bufnr].disable_autoformat then
        return { timeout_ms = 500, lsp_format = "fallback" }
      end
    end,

    bash = { "shfmt" },
    go = { "gofmt", "goimports" },
    javascript = { "biome" },
    lua = { "stylua" },
    python = { "ruff_format" },
    terraform = { "terraform" },
    typescript = { "biome" },
  },
}
