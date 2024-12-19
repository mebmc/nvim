-- Set up auto formatting
vim.cmd([[let g:terraform_fmt_on_save=1]])
vim.cmd([[let g:terraform_align=1]])

-- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]


vim.opt.commentstring = "# %s"
