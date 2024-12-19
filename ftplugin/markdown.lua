-- Markdown specific settings
vim.opt.wrap = true -- Wrap text
vim.opt.breakindent = true -- Match indent on line break
vim.opt.linebreak = true -- Line break on whole words
vim.opt.conceallevel=0

vim.opt.textwidth = 120
vim.opt.colorcolumn = "120"

-- Allow j/k when navigating wrapped lines
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Spell check
vim.opt.spelllang = 'en_gb'
vim.opt.spell = true
