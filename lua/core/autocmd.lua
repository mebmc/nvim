vim.api.nvim_create_autocmd({'BufWinEnter'}, {
  -- group = 'userconfig',
  desc = 'return cursor to where it was last time closing the file',
  pattern = '*',
  command = 'silent! normal! g`"zv',
})

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<M-h>', [[<Cmd>TmuxNavigateLeft<CR>]], opts)
  vim.keymap.set('t', '<M-j>', [[<Cmd>TmuxNavigateDown<CR>]], opts)
  vim.keymap.set('t', '<M-k>', [[<Cmd>TmuxNavigateUp<CR>]], opts)
  vim.keymap.set('t', '<M-l>', [[<Cmd>TmuxNavigateRight<CR>]], opts)
  vim.keymap.set('t', '<M-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
