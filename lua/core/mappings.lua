--_ Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode" })
keymap.set("n", "<leader>ww", "<cmd>w<CR>", { desc = "save" })
keymap.set("n", "<leader>wq", "<cmd>wq<CR>", { desc = "save and quit" })
keymap.set("n", "<leader>wb", "<cmd>w<CR><cmd>bd<CR>", { desc = "save and close buffer" })
keymap.set("n", "<leader>qq", "<cmd>q<CR>", { desc = "quit" })
keymap.set("n", "<leader>qQ", "<cmd>q!<CR>", { desc = "force quit" })
keymap.set("n", "<leader>qb", "<cmd>bd<CR>", { desc = "quit buffer" })
keymap.set("n", "gx", "<cmd>!open <c-r><c-a><CR>", { desc = "open URL under cursor" })
keymap.set("n", "gb", "<cmd>bprev<CR>", { desc = "previous buffer" })
keymap.set("n", "gB", "<cmd>bnext<CR>", { desc = "next buffer" })
-- keymap.set("n", "gq", "<cmd>bd<CR>", { desc = "close buffer" })

-- User maps
keymap.set("n", "<leader>u2", "<cmd>set autoindent expandtab tabstop=2 shiftwidth=2<cr>", { desc = "tab size 2" })
keymap.set("n", "<leader>u4", "<cmd>set autoindent expandtab tabstop=4 shiftwidth=4<cr>", { desc = "tab size 4" })
keymap.set("n", "<leader>u8", "<cmd>set autoindent expandtab tabstop=8 shiftwidth=8<cr>", { desc = "tab size 8" })
keymap.set("n", "<leader>uc", "<cmd>CloakToggle<cr>", { desc = "toggle cloak" })
keymap.set("n", "<leader>ut", "<cmd>TroubleToggle<cr>", { desc = "toggle trouble" })
keymap.set("n", "<leader>uT", "<cmd>TransparentToggle<cr>", { desc = "toggle transparent" })
keymap.set("n", "<leader>uz", "<cmd>Twilight<cr>", { desc = "toggle twilight" })
keymap.set("n", "<leader>uZ", "<cmd>ZenMode<cr>", { desc = "toggle zenmode" })
keymap.set("n", "<leader>us", "<cmd>set scrollbind<cr>", { desc = "set scrollbind" })
keymap.set("n", "<leader>uS", "<cmd>set noscrollbind<cr>", { desc = "stop scrollbind" })

-- Tmux navigator
keymap.set("n", "<M-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "navigate left" })
keymap.set("n", "<M-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "navigate down" })
keymap.set("n", "<M-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "navigate up" })
keymap.set("n", "<M-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "navigate right" })
keymap.set("n", "<M-\\>", "<cmd>TmuxNavigatePrevious<CR>", { desc = "navigate previous" })
keymap.set("i", "<M-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "navigate left" })
keymap.set("i", "<M-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "navigate down" })
keymap.set("i", "<M-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "navigate up" })
keymap.set("i", "<M-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "navigate right" })
keymap.set("i", "<M-\\>", "<cmd>TmuxNavigatePrevious<CR>", { desc = "navigate previous" })

-- Buffer management

keymap.set("n", "<leader>bq", "<cmd>bd<CR>", { desc = "quit buffer" })
keymap.set("n", "<leader>bQ", "<cmd>bd!<CR>", { desc = "force quit buffer" })
keymap.set("n", "<leader>bn", "<cmd>enew<CR>", { desc = "new buffer" })
keymap.set("n", "[B", "<cmd>bfirst<CR>", { desc = "first buffer" })
keymap.set("n", "[b", "<cmd>bprevious<CR>", { desc = "previous buffer" })
keymap.set("n", "]b", "<cmd>bnext<CR>", { desc = "next buffer" })
keymap.set("n", "]B", "<cmd>blast<CR>", { desc = "last buffer" })

-- Tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close tab" })
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "close tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "previous tab" })
keymap.set("n", "]t", "<cmd>tabn<CR>", { desc = "next tab" })
keymap.set("n", "]t", "<cmd>tabp<CR>", { desc = "previous tab" })

-- Split window management
keymap.set("n", "<leader>s\\", "<C-w>s", { desc = "split horizontally" })
keymap.set("n", "<leader>s|", "<C-w>v", { desc = "split vertically" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "equal width split" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close split" })
keymap.set("n", "<leader>sj", "<C-w>-", { desc = "increase split height" })
keymap.set("n", "<leader>sk", "<C-w>+", { desc = "decrease split height" })
keymap.set("n", "<leader>sl", "<C-w>>5", { desc = "increase split width" })
keymap.set("n", "<leader>sh", "<C-w><5", { desc = "decrease split width" })

-- quickfix keymaps
keymap.set("n", "<leader>xo", "<cmd>copen<cr>", { desc = "open quickfix" })
keymap.set("n", "<leader>xf", "<cmd>cfirst<cr>", { desc = "first quickfix item" })
keymap.set("n", "<leader>xn", "<cmd>cnext<cr>", { desc = "next quickfix item" })
keymap.set("n", "<leader>xp", "<cmd>cprev<cr>", { desc = "previous quickfix item" })
keymap.set("n", "<leader>xl", "<cmd>clast<cr>", { desc = "last quickfix item" })
keymap.set("n", "<leader>xc", "<cmd>cclose<cr>", { desc = "open quickfix" })
keymap.set("n", "[q", "<cmd>cfirst<cr>", { desc = "first quickfix item" })
keymap.set("n", "[q", "<cmd>cprev<cr>", { desc = "previous quickfix item" })
keymap.set("n", "]q", "<cmd>cnext<cr>", { desc = "next quickfix item" })
keymap.set("n", "]Q", "<cmd>clast<cr>", { desc = "last quickfix item" })

-- location list keymaps
keymap.set("n", "<leader>Lo", "<cmd>lopen<cr>", { desc = "open location list" })
keymap.set("n", "<leader>Lf", "<cmd>lfirst<cr>", { desc = "first location list item" })
keymap.set("n", "<leader>Ln", "<cmd>lnext<cr>", { desc = "next location list item" })
keymap.set("n", "<leader>Lp", "<cmd>lprev<cr>", { desc = "previous location list item" })
keymap.set("n", "<leader>Ll", "<cmd>llast<cr>", { desc = "last location list item" })
keymap.set("n", "<leader>Lc", "<cmd>lclose<cr>", { desc = "open location list" })
keymap.set("n", "[L", "<cmd>lfirst<cr>", { desc = "first location list item" })
keymap.set("n", "[l", "<cmd>lprev<cr>", { desc = "previous location list item" })
keymap.set("n", "]l", "<cmd>lnext<cr>", { desc = "next location list item" })
keymap.set("n", "]L", "<cmd>llast<cr>", { desc = "last location list item" })

-- Vim-maximizer
keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>", { desc = "maximize tab" })

-- Explorer
-- keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "toggle file explorer" })
-- keymap.set("n", "<leader>ef", "<cmd>Neotree focus<CR>", { desc = "focus file explorer" })
-- keymap.set("n", "<leader>el", "<cmd>Neotree left<CR>", { desc = "left explorer" })
-- keymap.set("n", "<leader>er", "<cmd>Neotree right<CR>", { desc = "right explorer" })

-- Telescope
keymap.set("n", "<C-o>", require("telescope.builtin").oldfiles, { desc = "old files" })
keymap.set("n", "<C-p>", require("telescope.builtin").find_files, { desc = "find files" })

keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "buffers" })
keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "find files" })
keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "live grep" })
keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "buffers" })
keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "help tags" })
keymap.set("n", "<leader>fB", require("telescope.builtin").current_buffer_fuzzy_find, { desc = "current buffer" })
keymap.set("n", "<leader>fo", require("telescope.builtin").lsp_document_symbols, { desc = "lsp document symbols" })
keymap.set("n", "<leader>fi", require("telescope.builtin").lsp_incoming_calls, { desc = "lsp incoming calls" })
keymap.set("n", "<leader>fm", function() require("telescope.builtin").treesitter({ default_text = ":method:" }) end,
  { desc = "treesitter methods" })
keymap.set("n", "<leader>fs", "<cmd>Telescope neovim-project discover<CR>", { desc = "session list" })
keymap.set("n", "<leader>fS", "<cmd>Telescope neovim-project history<CR>", { desc = "session history" })

-- Terminal
keymap.set("n", "<leader>rf", "<cmd>ToggleTerm direction=float<CR>", { desc = "term float" })
keymap.set("n", "<leader>r\\", "<cmd>ToggleTerm direction=horizontal size=20<CR>", { desc = "term horizontal" })
keymap.set("n", "<leader>r|", "<cmd>ToggleTerm direction=vertical size=80<CR>", { desc = "term vertical" })
keymap.set("n", "<leader>rt", "<cmd>ToggleTerm<CR>", { desc = "term toggle" })
-- keymap.set("n", "<leader>rb", "<cmd>ToggleTerm direction=horizontal size=20 dir=%:h<CR>", { desc = "term buf path" })
keymap.set("n", "<leader>rw", "<cmd>!tmux splitw -l 20\\%<CR>", { silent = true, desc = "tmux working path" })
keymap.set("n", "<leader>rW", "<cmd>!tmux splitw -l 50\\%<CR>", { silent = true, desc = "tmux working path" })
keymap.set("n", "<leader>rb", "<cmd>!tmux splitw -l 20\\% -c %:h<CR>", { silent = true, desc = "tmux buf path" })
keymap.set("n", "<leader>rB", "<cmd>!tmux splitw -l 50\\% -c %:h<CR>", { silent = true, desc = "tmux buf path" })

-- Updated
keymap.set("n", "<leader>\\", "<cmd>!tmux splitw -l 30\\% -c %:h<CR>", { silent = true, desc = "term horizontal" })
keymap.set("n", "<leader>|", "<cmd>!tmux splitw -h -l 30\\% -c %:h<CR>", { silent = true, desc = "term vertical" })
keymap.set("n", "<leader><C-\\>", "<cmd>ToggleTerm direction=float<CR>", { desc = "term float" })


-- -- Diff keymaps
-- keymap.set("n", "<leader>cc", "<cmd>diffput<CR>", { desc = "put diff" })
-- keymap.set("n", "<leader>cj", "<cmd>diffget 1<CR>", { desc = "get diff from left" })
-- keymap.set("n", "<leader>ck", "<cmd>diffget 3<CR>", { desc = "get diff from right" })
-- keymap.set("n", "<leader>cn", "]c", { desc = "next diff hunk" })
-- keymap.set("n", "<leader>cp", "[c", { desc = "previous diff hunk" })

-- Git
keymap.set("n", "]g", function() require("gitsigns").next_hunk() end, { desc = "next git hunk" })
keymap.set("n", "[g", function() require("gitsigns").prev_hunk() end, { desc = "previous git hunk" })
keymap.set("n", "<leader>gb", function() require("gitsigns").blame_line() end, { desc = "view git blame" })
keymap.set("n", "<leader>gB", function() require("gitsigns").blame_line { full = true } end,
  { desc = "view full git blame" })
keymap.set("n", "<leader>gp", function() require("gitsigns").preview_hunk() end, { desc = "preview git hunk" })
keymap.set("n", "<leader>gh", function() require("gitsigns").reset_hunk() end, { desc = "reset git hunk" })
keymap.set("n", "<leader>gr", function() require("gitsigns").reset_buffer() end, { desc = "reset git buffer" })
keymap.set("n", "<leader>gs", function() require("gitsigns").stage_hunk() end, { desc = "stage git hunk" })
keymap.set("n", "<leader>gS", function() require("gitsigns").stage_buffer() end, { desc = "stage git buffer" })
keymap.set("n", "<leader>gu", function() require("gitsigns").undo_stage_hunk() end, { desc = "unstage git hunk" })
keymap.set("n", "<leader>gd", function() require("gitsigns").diffthis() end, { desc = "view git diff" })
keymap.set("n", "<leader>gN", "<cmd>Neogit cwd=%:p:h<CR>", { desc = "open neogit" })
keymap.set("n", "<leader>gD", "<cmd>DiffviewOpen<CR>", { desc = "diffview" })
keymap.set("n", "<leader>gH", "<cmd>DiffviewFileHistory<CR>", { desc = "diffview" })

-- Git-blame
keymap.set("n", "<leader>gt", ":GitBlameToggle<CR>", { desc = "toggle git blame" })

-- -- GitLab
-- local gitlab = require("gitlab")
-- -- local gitlab_server = require("gitlab.server")
-- vim.keymap.set("n", "<leader>glr", gitlab.review, { desc = "gitlab review" })
-- vim.keymap.set("n", "<leader>gls", gitlab.summary, { desc = "gitlab summary" })
-- vim.keymap.set("n", "<leader>glA", gitlab.approve, { desc = "gitlab approve" })
-- vim.keymap.set("n", "<leader>glR", gitlab.revoke, { desc = "gitlab revoke" })
-- vim.keymap.set("n", "<leader>glc", gitlab.create_comment, { desc = "gitlab comment" })
-- vim.keymap.set("v", "<leader>glc", gitlab.create_multiline_comment, { desc = "gitlab multilne comment" })
-- vim.keymap.set("v", "<leader>glC", gitlab.create_comment_suggestion, { desc = "gitlab comment suggestion" })
-- vim.keymap.set("n", "<leader>glO", gitlab.create_mr, { desc = "gitlab merge request" })
-- vim.keymap.set("n", "<leader>glm", gitlab.move_to_discussion_tree_from_diagnostic, { desc = "gitlab move to discussions" })
-- vim.keymap.set("n", "<leader>gln", gitlab.create_note, { desc = "gitlab note" })
-- vim.keymap.set("n", "<leader>gld", gitlab.toggle_discussions, { desc = "gitlab toggle discussions" })
-- vim.keymap.set("n", "<leader>glaa", gitlab.add_assignee, { desc = "gitlab add assignee" })
-- vim.keymap.set("n", "<leader>glad", gitlab.delete_assignee, { desc = "gitlab delete assignee" })
-- vim.keymap.set("n", "<leader>glla", gitlab.add_label, { desc = "gitlab add label" })
-- vim.keymap.set("n", "<leader>glld", gitlab.delete_label, { desc = "gitlab delete label" })
-- vim.keymap.set("n", "<leader>glra", gitlab.add_reviewer, { desc = "gitlab reviewer add" })
-- vim.keymap.set("n", "<leader>glrd", gitlab.delete_reviewer, { desc = "gitlab reviewer delete" })
-- vim.keymap.set("n", "<leader>glp", gitlab.pipeline, { desc = "gitlab pipeline" })
-- vim.keymap.set("n", "<leader>glo", gitlab.open_in_browser, { desc = "gitlab open" })
-- vim.keymap.set("n", "<leader>glM", gitlab.merge, { desc = "gitlab merge" })

-- Zk notes
keymap.set("n", "<leader>nf", "<cmd>ZkNotes { excludeHrefs = { 'daily/', 'weekly/', 'monthly/' } } <CR>", { desc = "find notes" })
keymap.set("n", "<leader>nF", "<cmd>ZkNotes<CR>", { desc = "find all notes" })
keymap.set("n", "<leader>nn", "<cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", { desc = "new note" })
keymap.set("n", "<leader>nb", "<cmd>ZkBacklinks<CR>", { desc = "note backlinks" })
keymap.set("n", "<leader>nl", "<cmd>ZkLinks<CR>", { desc = "note links" })
keymap.set("n", "<leader>ni", "<cmd>ZkInsertLink<CR>", { desc = "insert link" })
keymap.set("n", "<leader>nt", "<cmd>ZkTags<CR>", { desc = "note tags" })

keymap.set("n", "<leader>nd", function() require("zk.commands").get("ZkNew")({ dir = "daily" }) end, { desc = "open daily" })
keymap.set("n", "<leader>nD", "<cmd>ZkNotes { tags = { 'daily' } }<CR>", { desc = "find daily" })

keymap.set("n", "<leader>nw", function() require("zk.commands").get("ZkNew")({ dir = "weekly" }) end, { desc = "open weekly" })
keymap.set("n", "<leader>nW", "<cmd>ZkNotes { tags = { 'weekly' } }<CR>", { desc = "find weekly" })

keymap.set("n", "<leader>nm", function() require("zk.commands").get("ZkNew")({ dir = "monthly" }) end, { desc = "open monthly" })
keymap.set("n", "<leader>nM", "<cmd>ZkNotes { tags = { 'monthly' } }<CR>", { desc = "find monthly" })

-- Plugin Manager
keymap.set("n", "<leader>pi", function() require("lazy").install() end, { desc = "plugins Install" })
keymap.set("n", "<leader>ps", function() require("lazy").home() end, { desc = "plugins Status" })
keymap.set("n", "<leader>pS", function() require("lazy").sync() end, { desc = "plugins Sync" })
keymap.set("n", "<leader>pu", function() require("lazy").check() end, { desc = "plugins Check Updates" })
keymap.set("n", "<leader>pU", function() require("lazy").update() end, { desc = "plugins Update" })
keymap.set("n", "<leader>pm", "<cmd>Mason<CR>", { desc = "mason Status" })

-- Vim options
keymap.set("n", "<leader>va", "<cmd>set formatoptions=tc<CR>", { desc = "enable auto format" })
keymap.set("n", "<leader>vA", "<cmd>set formatoptions-=tc<CR>", { desc = "disable auto format" })

-- Vim REST Console
keymap.set("n", "<leader>xr", "<cmd>call VrcQuery()<CR>", { desc = "REST query" }) -- Run REST query

-- LSP
keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "definition" })
keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "definition" })
--
-- keymap.set("n", "<leader>lg", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "hover" })
-- keymap.set("n", "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "definition" })
-- keymap.set("n", "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "declaration" })
-- keymap.set("n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "implementation" })
-- keymap.set("n", "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "type definition" })
-- keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "references" })
-- keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "signature help" })
-- keymap.set("n", "<leader>lR", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "rename" })
keymap.set("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { desc = "format" })
keymap.set("v", "<leader>lf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { desc = "format" })
-- keymap.set("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "code action" })
-- keymap.set("n", "<leader>ll", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "diagnostic open" })
-- keymap.set("n", "<leader>lp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "diagnostic previous" })
-- keymap.set("n", "<leader>ln", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "diagnostic next" })
-- keymap.set("n", "<leader>lS", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", { desc = "document symbol" })
-- keymap.set("i", "<C-Space>", "<cmd>lua vim.lsp.buf.completion()<CR>", { desc = "completion" })

-- LSP Saga
keymap.set("n", "gl", "<cmd>Lspsaga show_line_diagnostics<cr>",      { desc = "Lspsaga Line Diagnostics" })

keymap.set("n", "<leader>lh", "<cmd>Lspsaga finder<cr>",                 { desc = "Lspsaga LSP Finder" })
keymap.set("n", "<leader>lv", "<cmd>Lspsaga code_action<cr>",                { desc = "Lspsaga Code Action" })
keymap.set("n", "<leader>lr", "<cmd>Lspsaga rename<cr>",                     { desc = "Lspsaga Rename" })
keymap.set("n", "<leader>lR", "<cmd>Lspsaga rename ++project<cr>",           { desc = "Lspsaga Rename Project" })
keymap.set("n", "<leader>ld", "<cmd>Lspsaga peek_definition<cr>",            { desc = "Lspsaga Peak Definition" })
keymap.set("n", "<leader>lD", "<cmd>Lspsaga goto_definition<cr>",            { desc = "Lspsaga Goto Definition" })
keymap.set("n", "<leader>lt", "<cmd>Lspsaga peek_type_definition<cr>",       { desc = "Lspsaga Peak Type Def" })
keymap.set("n", "<leader>lT", "<cmd>Lspsaga goto_type_definition<cr>",       { desc = "Lspsaga Goto Type Def" })
keymap.set("n", "<leader>ll", "<cmd>Lspsaga show_line_diagnostics<cr>",      { desc = "Lspsaga Line Diagnostics" })
keymap.set("n", "<leader>lb", "<cmd>Lspsaga show_buf_diagnostics<cr>",       { desc = "Lspsaga Buf Diagnostics" })
keymap.set("n", "<leader>lw", "<cmd>Lspsaga show_workspace_diagnostics<cr>", { desc = "Lspsaga Workspace Diagnostics" })
keymap.set("n", "<leader>lc", "<cmd>Lspsaga show_cursor_diagnostics<cr>",    { desc = "Lspsaga Cursor Diagnostics" })
keymap.set("n", "<leader>lo", "<cmd>Lspsaga outline<cr>",                    { desc = "Lspsaga Outline" })
keymap.set("n", "<leader>lk", "<cmd>Lspsaga hover_doc<cr>",                  { desc = "Lspsaga Hover Doc" })
keymap.set("n", "<leader>lK", "<cmd>Lspsaga hover_doc ++keep<cr>",           { desc = "Lspsaga Hover Doc (Keep)" })
keymap.set("n", "<leader>lI", "<cmd>Lspsaga incoming_calls<cr>",             { desc = "Lspsaga Incoming Calls" })
keymap.set("n", "<leader>lO", "<cmd>Lspsaga outgoing_calls<cr>",             { desc = "Lspsaga Outgoing Calls" })
keymap.set("n", "<leader>lt", "<cmd>Lspsaga term_toggle<cr>",                { desc = "Lspsaga Term Toggle" })
keymap.set("n", "[e",         "<cmd>Lspsaga diagnostic_jump_prev<cr>",       { desc = "Lspsaga Diagnostic jump" })
keymap.set("n", "]e",         "<cmd>Lspsaga diagnostic_jump_next<cr>",       { desc = "Lspsaga Diagnostics jump" })

-- Debugging
keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "toggle breakpoint" })
keymap.set("n", "<leader>dC", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('breakpoint condition: '))<cr>",
  { desc = "breakpoint condition" })
keymap.set("n", "<leader>dL", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>",
  { desc = "breakpoint log" })
keymap.set("n", "<leader>dR", "<cmd>lua require'dap'.clear_breakpoints()<cr>", { desc = "clear breakpoints" })
keymap.set("n", "<leader>da", "<cmd>Telescope dap list_breakpoints<cr>", { desc = "list breakpoints" })
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "continue" })
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>", { desc = "step over" })
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>", { desc = "step into" })
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>", { desc = "step out" })
keymap.set("n", "<leader>dd", function()
  require("dap").disconnect(); require("dapui").close();
end, { desc = "disconnect" })
keymap.set("n", "<leader>dt", function()
  require("dap").terminate(); require("dapui").close();
end, { desc = "terminate" })
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "toggle repl" })
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", { desc = "run last" })
keymap.set("n", "<leader>di", function() require "dap.ui.widgets".hover() end, { desc = "widgets" })
keymap.set("n", "<leader>d?",
  function()
    local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes)
  end, { desc = "widgets centered float" })
keymap.set("n", "<leader>df", "<cmd>Telescope dap frames<cr>", { desc = "frames" })
keymap.set("n", "<leader>dh", "<cmd>Telescope dap commands<cr>", { desc = "commands" })
keymap.set("n", "<leader>de", function() require("telescope.builtin").diagnostics({ default_text = ":E:" }) end,
  { desc = "diagnostics" })

-- Copilot
-- keymap.set("n", "<leader>ap", "<cmd>Copilot panel<CR>", { desc = "copilot panel" })
-- keymap.set("n", "<leader>ab", ":CopilotChatBuffer ", { desc = "copilot chat buffer" })
-- keymap.set("n", "<leader>ai", "<cmd>CopilotChatInPlace<CR>", { desc = "copilot chat in place" })
-- keymap.set("n", "<leader>af", "<cmd>CopilotChatFixDiagnostic<CR>", { desc = "copilot fix diagnostic" })

-- keymap.set("n", "<leader>ae", "<cmd>CopilotChatExplain<CR>", { desc = "copilot explain" })
-- keymap.set("n", "<leader>ar", "<cmd>CopilotChatReview<CR>", { desc = "copilot review" })
-- keymap.set("n", "<leader>at", "<cmd>CopilotChatTests<CR>", { desc = "copilot tests" })
-- keymap.set("n", "<leader>aR", "<cmd>CopilotChatRefactor<CR>", { desc = "copilot refactor" })
-- keymap.set("n", "<leader>aF", "<cmd>CopilotChatFixCode<CR>", { desc = "copilot fix code" })
-- keymap.set("n", "<leader>ab", "<cmd>CopilotChatBetterNamings<CR>", { desc = "copilot better naming" })
-- keymap.set("n", "<leader>ad", "<cmd>CopilotChatDocumentation<CR>", { desc = "copilot documentation" })
-- keymap.set("n", "<leader>as", "<cmd>CopilotChatSummarize<CR>", { desc = "copilot summarize" })
-- keymap.set("n", "<leader>aw", "<cmd>CopilotChatWording<CR>", { desc = "copilot wording" })
-- keymap.set("n", "<leader>ac", "<cmd>CopilotChatConcise<CR>", { desc = "copilot concise" })

-- keymap.set("n", "<leader>ab", ":CopilotChatBuffer ", { desc = "copilot visual" })
-- keymap.set("n", "<leader>ae", "<cmd>CopilotChatBuffer Please explain how the preceding code block works.<CR>", { desc = "copilot explain" })
-- keymap.set("n", "<leader>ar", "<cmd>CopilotChatBuffer Please review the preceding code and provide suggestions for improvement.<CR>", { desc = "copilot review" })
-- keymap.set("n", "<leader>at", "<cmd>CopilotChatBuffer Please explain how the selected code works, then generate unit tests for it.<CR>", { desc = "copilot tests" })
-- keymap.set("n", "<leader>aR", "<cmd>CopilotChatBuffer Please refactor the preceding code to improve its clarity and readability.<CR>", { desc = "copilot refactor" })
-- keymap.set("n", "<leader>af", "<cmd>CopilotChatBuffer Please fix the preceding code to make it work as intended.<CR>", { desc = "copilot fix code" })
-- keymap.set("n", "<leader>ab", "<cmd>CopilotChatBuffer Please provide better names for the preceding variables and functions.<CR>", { desc = "copilot better naming" })
-- keymap.set("n", "<leader>ad", "<cmd>CopilotChatBuffer Please provide documentation for the preceding code.<CR>", { desc = "copilot documentation" })
-- keymap.set("n", "<leader>aa", "<cmd>CopilotChatBuffer Please provide documentation for the preceding API using Swagger.<CR>", { desc = "copilot swagger api" })
-- keymap.set("n", "<leader>aj", "<cmd>CopilotChatBuffer Please write JSDoc for the preceding API using Swagger.<CR>", { desc = "copilot swagger jsdoc" })
-- keymap.set("n", "<leader>as", "<cmd>CopilotChatBuffer Please summarize the preceding text.<CR>", { desc = "copilot summarize" })
-- keymap.set("n", "<leader>aS", "<cmd>CopilotChatBuffer Please correct any grammar and spelling errors in the preceding text.<CR>", { desc = "copilot spelling" })
-- keymap.set("n", "<leader>aw", "<cmd>CopilotChatBuffer Please improve the grammar and wording of the preceding text.<CR>", { desc = "copilot wording" })
-- keymap.set("n", "<leader>ac", "<cmd>CopilotChatBuffer Please rewrite the preceding text to make it more concise.<CR>", { desc = "copilot concise" })
--
-- keymap.set("v", "<leader>av", ":CopilotChatVisual ", { desc = "copilot visual" })
-- keymap.set("v", "<leader>ae", "<cmd>CopilotChatVisual Please explain how the preceding code block works.<CR>", { desc = "copilot explain" })
-- keymap.set("v", "<leader>ar", "<cmd>CopilotChatVisual Please review the preceding code and provide suggestions for improvement.<CR>", { desc = "copilot review" })
-- keymap.set("v", "<leader>at", "<cmd>CopilotChatVisual Please explain how the selected code works, then generate unit tests for it.<CR>", { desc = "copilot tests" })
-- keymap.set("v", "<leader>aR", "<cmd>CopilotChatVisual Please refactor the preceding code to improve its clarity and readability.<CR>", { desc = "copilot refactor" })
-- keymap.set("v", "<leader>af", "<cmd>CopilotChatVisual Please fix the preceding code to make it work as intended.<CR>", { desc = "copilot fix code" })
-- keymap.set("v", "<leader>ab", "<cmd>CopilotChatVisual Please provide better names for the preceding variables and functions.<CR>", { desc = "copilot better naming" })
-- keymap.set("v", "<leader>ad", "<cmd>CopilotChatVisual Please provide documentation for the preceding code.<CR>", { desc = "copilot documentation" })
-- keymap.set("v", "<leader>aa", "<cmd>CopilotChatVisual Please provide documentation for the preceding API using Swagger.<CR>", { desc = "copilot swagger api" })
-- keymap.set("v", "<leader>aj", "<cmd>CopilotChatVisual Please write JSDoc for the preceding API using Swagger.<CR>", { desc = "copilot swagger jsdoc" })
-- keymap.set("v", "<leader>as", "<cmd>CopilotChatVisual Please summarize the preceding text.<CR>", { desc = "copilot summarize" })
-- keymap.set("v", "<leader>aS", "<cmd>CopilotChatVisual Please correct any grammar and spelling errors in the preceding text.<CR>", { desc = "copilot spelling" })
-- keymap.set("v", "<leader>aw", "<cmd>CopilotChatVisual Please improve the grammar and wording of the preceding text.<CR>", { desc = "copilot wording" })
-- keymap.set("v", "<leader>ac", "<cmd>CopilotChatVisual Please rewrite the preceding text to make it more concise.<CR>", { desc = "copilot concise" })

-- Explain = "Please explain how the following code works.",
-- Review = "Please review the following code and provide suggestions for improvement.",
-- Tests = "Please explain how the selected code works, then generate unit tests for it.",
-- Refactor = "Please refactor the following code to improve its clarity and readability.",
-- FixCode = "Please fix the following code to make it work as intended.",
-- BetterNamings = "Please provide better names for the following variables and functions.",
-- Documentation = "Please provide documentation for the following code.",
-- SwaggerApiDocs = "Please provide documentation for the following API using Swagger.",
-- SwaggerJsDocs = "Please write JSDoc for the following API using Swagger.",
-- -- Text-related prompts
-- Summarize = "Please summarize the following text.",
-- Spelling = "Please correct any grammar and spelling errors in the following text.",
-- Wording = "Please improve the grammar and wording of the following text.",
-- Concise = "Please rewrite the following text to make it more concise.",

vim.keymap.set("n", "<Leader><Esc>", function()
  vim.fn.setreg("/", "")
end, {
  desc = "Clear 'hlsearch'",
  silent = true,
  noremap = true,
})
