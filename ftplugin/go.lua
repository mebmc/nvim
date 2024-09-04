vim.o.tabstop = 4


vim.api.nvim_create_augroup("AutoFormat", {})

vim.api.nvim_create_autocmd(
  "BufWritePost",
  {
    pattern = "*.go",
    group = "AutoFormat",
    callback = function()
      -- vim.lsp.buf.format({ async = false })
      require('go.format').goimports()
    end,
  }
)
