--_ Set leader key to space
vim.g.mapleader = ' '

local keymap = vim.keymap

-- General keymaps
keymap.set('i', 'jk', '<ESC>', { desc = 'exit insert mode' })
keymap.set('n', '<leader>w', '', { desc = 'write' })
keymap.set('n', '<leader>W', '', { desc = 'write' })
keymap.set('n', '<leader>ww', '<cmd>w<CR>', { desc = 'save' })
keymap.set('n', '<leader>Ww', '<cmd>w<CR>', { desc = 'save' })
keymap.set('n', '<leader>wq', '<cmd>wqa<CR>', { desc = 'save and quit' })
keymap.set('n', '<leader>Wq', '<cmd>wqa<CR>', { desc = 'save and quit' })
keymap.set('n', '<leader>wb', '<cmd>w<CR><cmd>bd<CR>', { desc = 'save and close buffer' })
keymap.set('n', '<leader>qQ', '<cmd>qa!<CR>', { desc = 'force quit' })
keymap.set('n', '<leader>qb', '<cmd>bd<CR>', { desc = 'quit buffer' })
keymap.set('n', '<leader>qq', '<cmd>qa<CR>', { desc = 'quit' })
keymap.set('n', '<leader>qr', '<cmd>checktime<CR>', { desc = 'check/reload changed file' })
keymap.set('n', '<leader>qs', '<cmd>close<CR>', { desc = 'close split' })
keymap.set('n', '<C-c>', '<cmd>:confirm qa<CR>', { desc = 'quit' })
keymap.set('n', '<C-d>', '<cmd>qa!<CR>', { desc = 'force quit' })
keymap.set('n', 'gx', '<cmd>!open <c-r><c-a><CR>', { desc = 'open URL under cursor' })
keymap.set('n', 'gb', '<cmd>bprev<CR>', { desc = 'previous buffer' })
keymap.set('n', 'gB', '<cmd>bnext<CR>', { desc = 'next buffer' })
-- keymap.set("n", "gq", "<cmd>bd<CR>", { desc = "close buffer" })
keymap.set('n', 't', '"tp', { desc = 'paste t register' })
keymap.set('n', 'T', '"tyy', { desc = 'copy t register' })
keymap.set({ 'n', 'x' }, 't', '"tp', { desc = 'paste t register' })
keymap.set('x', 'T', '"ty', { desc = 'copy selection to t register' })

-- User maps
keymap.set('n', '<leader>u2', '<cmd>set autoindent expandtab tabstop=2 shiftwidth=2<cr>', { desc = 'tab size 2' })
keymap.set('n', '<leader>u4', '<cmd>set autoindent expandtab tabstop=4 shiftwidth=4<cr>', { desc = 'tab size 4' })
keymap.set('n', '<leader>u8', '<cmd>set autoindent expandtab tabstop=8 shiftwidth=8<cr>', { desc = 'tab size 8' })
keymap.set('n', '<leader>uS', '<cmd>set noscrollbind<cr>', { desc = 'stop scrollbind' })
keymap.set('n', '<leader>uT', '<cmd>TransparentToggle<cr>', { desc = 'toggle transparent' })
keymap.set('n', '<leader>uZ', '<cmd>ZenMode<cr>', { desc = 'toggle zenmode' })
keymap.set('n', '<leader>uc', '<cmd>CloakToggle<cr>', { desc = 'toggle cloak' })
keymap.set('n', '<leader>um', '<cmd>RenderMarkdown toggle<cr>', { desc = 'toggle render markdown' })
keymap.set('n', '<leader>us', '<cmd>set scrollbind<cr>', { desc = 'set scrollbind' })
keymap.set('n', '<leader>ut', '<cmd>TroubleToggle<cr>', { desc = 'toggle trouble' })
keymap.set('n', '<leader>uz', '<cmd>Twilight<cr>', { desc = 'toggle twilight' })

-- Tmux navigator
keymap.set('n', '<M-H>', '<cmd>TmuxNavigateLeft<CR>', { desc = 'navigate left' })
keymap.set('n', '<M-J>', '<cmd>TmuxNavigateDown<CR>', { desc = 'navigate down' })
keymap.set('n', '<M-K>', '<cmd>TmuxNavigateUp<CR>', { desc = 'navigate up' })
keymap.set('n', '<M-L>', '<cmd>TmuxNavigateRight<CR>', { desc = 'navigate right' })
keymap.set('n', '<M-\\>', '<cmd>TmuxNavigatePrevious<CR>', { desc = 'navigate previous' })
keymap.set('i', '<M-H>', '<cmd>TmuxNavigateLeft<CR>', { desc = 'navigate left' })
keymap.set('i', '<M-J>', '<cmd>TmuxNavigateDown<CR>', { desc = 'navigate down' })
keymap.set('i', '<M-K>', '<cmd>TmuxNavigateUp<CR>', { desc = 'navigate up' })
keymap.set('i', '<M-L>', '<cmd>TmuxNavigateRight<CR>', { desc = 'navigate right' })
keymap.set('i', '<M-\\>', '<cmd>TmuxNavigatePrevious<CR>', { desc = 'navigate previous' })

-- Buffer management
keymap.set('n', '<leader>bq', '<cmd>bd<CR>', { desc = 'close buffer' })
keymap.set('n', '<leader>bQ', '<cmd>bd!<CR>', { desc = 'force close buffer' })
keymap.set('n', '<leader>bn', '<cmd>enew<CR>', { desc = 'new buffer' })
keymap.set('n', '<leader>bo', '<cmd>%bd|e#|bd#<CR>', { desc = 'close other buffers' })
keymap.set('n', '[B', '<cmd>bfirst<CR>', { desc = 'first buffer' })
keymap.set('n', '[b', '<cmd>bprevious<CR>', { desc = 'previous buffer' })
keymap.set('n', ']b', '<cmd>bnext<CR>', { desc = 'next buffer' })
keymap.set('n', ']B', '<cmd>blast<CR>', { desc = 'last buffer' })

-- Tab management
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'open new tab' })
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'close tab' })
keymap.set('n', '<leader>tq', '<cmd>tabclose<CR>', { desc = 'close tab' })
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'next tab' })
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'previous tab' })
keymap.set('n', ']t', '<cmd>tabn<CR>', { desc = 'next tab' })
keymap.set('n', '[t', '<cmd>tabp<CR>', { desc = 'previous tab' })

-- Split window management
keymap.set('n', '<leader>s\\', '<C-w>s', { desc = 'split horizontally' })
keymap.set('n', '<leader>s|', '<C-w>v', { desc = 'split vertically' })
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'equal width split' })
keymap.set('n', '<leader>sq', '<cmd>close<CR>', { desc = 'close split' })
keymap.set('n', '<leader>sj', '<C-w>5-', { desc = 'increase split height' })
keymap.set('n', '<leader>sk', '<C-w>5+', { desc = 'decrease split height' })
keymap.set('n', '<leader>sl', '<C-w>>5', { desc = 'increase split width' })
keymap.set('n', '<leader>sh', '<C-w><5', { desc = 'decrease split width' })

-- quickfix keymaps
keymap.set('n', '<leader>xo', '<cmd>copen<cr>', { desc = 'open quickfix' })
keymap.set('n', '<leader>xf', '<cmd>cfirst<cr>', { desc = 'first quickfix item' })
keymap.set('n', '<leader>xn', '<cmd>cnext<cr>', { desc = 'next quickfix item' })
keymap.set('n', '<leader>xp', '<cmd>cprev<cr>', { desc = 'previous quickfix item' })
keymap.set('n', '<leader>xl', '<cmd>clast<cr>', { desc = 'last quickfix item' })
keymap.set('n', '<leader>xq', '<cmd>cclose<cr>', { desc = 'close quickfix' })
keymap.set('n', '[Q', '<cmd>cfirst<cr>', { desc = 'first quickfix item' })
keymap.set('n', '[q', '<cmd>cprev<cr>', { desc = 'previous quickfix item' })
keymap.set('n', ']q', '<cmd>cnext<cr>', { desc = 'next quickfix item' })
keymap.set('n', ']Q', '<cmd>clast<cr>', { desc = 'last quickfix item' })

-- location list keymaps
keymap.set('n', '<leader>Lo', '<cmd>lopen<cr>', { desc = 'open location list' })
keymap.set('n', '<leader>Lf', '<cmd>lfirst<cr>', { desc = 'first location list item' })
keymap.set('n', '<leader>Ln', '<cmd>lnext<cr>', { desc = 'next location list item' })
keymap.set('n', '<leader>Lp', '<cmd>lprev<cr>', { desc = 'previous location list item' })
keymap.set('n', '<leader>Ll', '<cmd>llast<cr>', { desc = 'last location list item' })
keymap.set('n', '<leader>Lc', '<cmd>lclose<cr>', { desc = 'open location list' })
keymap.set('n', '[L', '<cmd>lfirst<cr>', { desc = 'first location list item' })
keymap.set('n', '[l', '<cmd>lprev<cr>', { desc = 'previous location list item' })
keymap.set('n', ']l', '<cmd>lnext<cr>', { desc = 'next location list item' })
keymap.set('n', ']L', '<cmd>llast<cr>', { desc = 'last location list item' })

-- Vim-maximizer
keymap.set('n', '<leader>sm', '<cmd>MaximizerToggle<CR>', { desc = 'maximize tab' })

-- Terminal
keymap.set('n', '<leader>r\\', '<cmd>!tmux splitw -l 30\\% -c %:h<CR>', { silent = true, desc = 'term horizontal' })
keymap.set('n', '<leader>r|', '<cmd>!tmux splitw -h -l 30\\% -c %:h<CR>', { silent = true, desc = 'term vertical' })
keymap.set('n', '<leader>rw', '<cmd>!tmux splitw -l 20\\%<CR>', { silent = true, desc = 'tmux working path' })
keymap.set('n', '<leader>rW', '<cmd>!tmux splitw -l 50\\%<CR>', { silent = true, desc = 'tmux working path' })
keymap.set('n', '<leader>rb', '<cmd>!tmux splitw -l 20\\% -c %:h<CR>', { silent = true, desc = 'tmux buf path' })
keymap.set('n', '<leader>rB', '<cmd>!tmux splitw -l 50\\% -c %:h<CR>', { silent = true, desc = 'tmux buf path' })

-- -- Diff keymaps
-- keymap.set("n", "<leader>cc", "<cmd>diffput<CR>", { desc = "put diff" })
-- keymap.set("n", "<leader>cj", "<cmd>diffget 1<CR>", { desc = "get diff from left" })
-- keymap.set("n", "<leader>ck", "<cmd>diffget 3<CR>", { desc = "get diff from right" })
-- keymap.set("n", "<leader>cn", "]c", { desc = "next diff hunk" })
-- keymap.set("n", "<leader>cp", "[c", { desc = "previous diff hunk" })

-- Git
keymap.set('n', ']g', function()
  require('gitsigns').next_hunk()
end, { desc = 'next git hunk' })
keymap.set('n', '[g', function()
  require('gitsigns').prev_hunk()
end, { desc = 'previous git hunk' })
keymap.set('n', '<leader>gb', function()
  require('gitsigns').blame_line()
end, { desc = 'view git blame' })
keymap.set('n', '<leader>gB', function()
  require('gitsigns').blame_line { full = true }
end, { desc = 'view full git blame' })
keymap.set('n', '<leader>gp', function()
  require('gitsigns').preview_hunk()
end, { desc = 'preview git hunk' })
keymap.set('n', '<leader>gh', function()
  require('gitsigns').reset_hunk()
end, { desc = 'reset git hunk' })
keymap.set('n', '<leader>gr', function()
  require('gitsigns').reset_buffer()
end, { desc = 'reset git buffer' })
keymap.set('n', '<leader>gs', function()
  require('gitsigns').stage_hunk()
end, { desc = 'stage git hunk' })
keymap.set('n', '<leader>gS', function()
  require('gitsigns').stage_buffer()
end, { desc = 'stage git buffer' })
keymap.set('n', '<leader>gu', function()
  require('gitsigns').undo_stage_hunk()
end, { desc = 'unstage git hunk' })
keymap.set('n', '<leader>gd', function()
  require('gitsigns').diffthis()
end, { desc = 'view git diff' })
keymap.set('n', '<leader>gN', '<cmd>Neogit cwd=%:p:h<CR>', { desc = 'open neogit' })
keymap.set('n', '<leader>gD', '<cmd>DiffviewOpen<CR>', { desc = 'diffview' })
keymap.set('n', '<leader>gH', '<cmd>DiffviewFileHistory<CR>', { desc = 'diffview' })

-- Git-blame
keymap.set('n', '<leader>gt', ':GitBlameToggle<CR>', { desc = 'toggle git blame' })

-- Plugin Manager
keymap.set('n', '<leader>pi', function()
  require('lazy').install()
end, { desc = 'plugins Install' })
keymap.set('n', '<leader>ps', function()
  require('lazy').home()
end, { desc = 'plugins Status' })
keymap.set('n', '<leader>pS', function()
  require('lazy').sync()
end, { desc = 'plugins Sync' })
keymap.set('n', '<leader>pu', function()
  require('lazy').check()
end, { desc = 'plugins Check Updates' })
keymap.set('n', '<leader>pU', function()
  require('lazy').update()
end, { desc = 'plugins Update' })
keymap.set('n', '<leader>pm', '<cmd>Mason<CR>', { desc = 'mason Status' })

-- Vim options
keymap.set('n', '<leader>uA', '<cmd>FormatEnable<CR>', { desc = 'enable auto format' })
keymap.set('n', '<leader>ua', '<cmd>FormatDisable<CR>', { desc = 'disable auto format' })

-- LSP
keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { desc = 'definition' })
keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { desc = 'definition' })
keymap.set('n', '<leader>vf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>', { desc = 'format' })
keymap.set('v', '<leader>vf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>', { desc = 'format' })
keymap.set('v', '<leader>vs', ':sort<CR>', { desc = 'sort' })

keymap.set('n', 'gl', "<cmd>lua vim.diagnostic.open_float({ scope = 'line' })<CR>", { desc = 'line diagnostics' })

keymap.set({ 'n', 'v' }, '<leader>v', '', { desc = 'lsp' })
keymap.set(
  'n',
  '<leader>v<enter>',
  '<cmd>lua vim.lsp.buf.document_symbol()<CR>',
  { desc = 'outline / document symbols' }
)
keymap.set('n', '<leader>vh', '<cmd>lua vim.lsp.buf.references()<CR>', { desc = 'lsp references' })
keymap.set({ 'n', 'v' }, '<leader>va', '<cmd>lua vim.lsp.buf.code_action()<CR>', { desc = 'code action' })
keymap.set('n', '<leader>vr', '<cmd>lua vim.lsp.buf.rename()<CR>', { desc = 'rename' })
keymap.set('n', '<leader>vR', '<cmd>lua vim.lsp.buf.rename()<CR>', { desc = 'rename project' })

keymap.set('n', '<leader>vd', '<cmd>lua vim.lsp.buf.definition()<CR>', { desc = 'definition' })
keymap.set('n', '<leader>vD', '<cmd>lua vim.lsp.buf.definition()<CR>', { desc = 'goto definition' })
keymap.set('n', '<leader>vt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { desc = 'type definition' })
keymap.set('n', '<leader>vT', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { desc = 'goto type definition' })

keymap.set(
  'n',
  '<leader>vl',
  "<cmd>lua vim.diagnostic.open_float({ scope = 'line' })<CR>",
  { desc = 'line diagnostics' }
)
keymap.set('n', '<leader>vb', '<cmd>lua vim.diagnostic.setloclist({ open = true })<CR>', { desc = 'buf diagnostics' })
keymap.set(
  'n',
  '<leader>vw',
  '<cmd>lua vim.diagnostic.setqflist({ open = true })<CR>',
  { desc = 'workspace diagnostics' }
)
keymap.set(
  'n',
  '<leader>vC',
  "<cmd>lua vim.diagnostic.open_float({ scope = 'cursor' })<CR>",
  { desc = 'cursor diagnostics' }
)

keymap.set('n', '<leader>vk', '<cmd>lua vim.lsp.buf.hover()<CR>', { desc = 'hover doc' })
keymap.set('n', '<leader>vK', '<cmd>lua vim.lsp.buf.hover()<CR>', { desc = 'hover doc' })

keymap.set('n', '<leader>vi', '<cmd>lua vim.lsp.buf.incoming_calls()<CR>', { desc = 'incoming calls' })
keymap.set('n', '<leader>vo', '<cmd>lua vim.lsp.buf.outgoing_calls()<CR>', { desc = 'outgoing calls' })

keymap.set(
  'n',
  '[e',
  '<cmd>lua vim.diagnostic.jump({ count = -1, float = true })<CR>',
  { desc = 'previous diagnostic' }
)
keymap.set('n', ']e', '<cmd>lua vim.diagnostic.jump({ count = 1, float = true })<CR>', { desc = 'next diagnostic' })

keymap.set('n', '<leader>fj', function()
  require('telescope.builtin').find_files({
    prompt_title = 'jj changed files',
    find_command = {
      'sh',
      '-c',
      'jj diff --name-only',
    },
  })
end, { desc = 'jj changed files' })

vim.keymap.set('n', '<Esc>', function()
  vim.cmd.nohlsearch()
  vim.fn.setreg('/', '')
end, {
  desc = 'Clear search highlight',
  silent = true,
  noremap = true,
})

-- init.lua / keymaps.lua
keymap.set('n', ']j', function()
  require('user.jj_jump').jump(1)
end, { desc = 'Next jj changed line' })

keymap.set('n', '[j', function()
  require('user.jj_jump').jump(-1)
end, { desc = 'Previous jj changed line' })

keymap.set('n', '[J', function()
  require('user.jj_jump').first()
end, { desc = 'First jj changed line' })

keymap.set('n', ']J', function()
  require('user.jj_jump').last()
end, { desc = 'Last jj changed line' })
