-- Markdown specific settings
vim.opt.wrap = true -- Wrap text
vim.opt.breakindent = true -- Match indent on line break
vim.opt.linebreak = true -- Line break on whole words
vim.opt.conceallevel=0

vim.opt.textwidth = 120
vim.opt.colorcolumn = "120"

-- Allow j/k when navigating wrapped lines (buffer-local)
vim.keymap.set("n", "j", "gj", { buffer = true, silent = true })
vim.keymap.set("n", "k", "gk", { buffer = true, silent = true })

-- Spell check
vim.opt.spelllang = 'en_gb'
vim.opt.spell = true
