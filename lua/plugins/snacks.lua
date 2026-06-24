return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,

  -- stylua: ignore
  ---@diagnostic disable: undefined-global
  keys = {
    { '<leader>f', desc = 'find', mode = { 'n', 'v' }, '' },
    -- Top Pickers & Explorer
    {'<leader>fF', function() Snacks.picker.smart() end, desc = 'Smart Find Files',},
    {'<leader><space>', function() Snacks.picker.buffers() end, desc = 'Buffers',},
    {'<leader>f/', function() Snacks.picker.grep() end, desc = 'Grep',},
    {'<leader>:', function() Snacks.picker.command_history() end, desc = 'Command History',},
    {'<leader>fn', function() Snacks.picker.notifications() end, desc = 'Notification History',},
    {'<leader>fe', function() Snacks.explorer() end, desc = 'File Explorer',},
    -- find
    {'<leader>fb', function() Snacks.picker.buffers() end, desc = 'Buffers',},
    {'<leader>fc', function() Snacks.picker.files({ cwd = vim.fn.stdpath('config') }) end, desc = 'Find Config File',},
    {'<leader>ff', function() Snacks.picker.files() end, desc = 'Find Files',},
    {'<leader>fg', function() Snacks.picker.git_files() end, desc = 'Find Git Files',},
    {'<leader>fp', function() Snacks.picker.projects() end, desc = 'Projects',},
    {'<leader>fr', function() Snacks.picker.recent() end, desc = 'Recent',},
    -- git
    {'<leader>fgb', function() Snacks.picker.git_branches() end, desc = 'Git Branches',},
    {'<leader>fgl', function() Snacks.picker.git_log() end, desc = 'Git Log',},
    {'<leader>fgL', function() Snacks.picker.git_log_line() end, desc = 'Git Log Line',},
    {'<leader>fgs', function() Snacks.picker.git_status() end, desc = 'Git Status',},
    {'<leader>fgS', function() Snacks.picker.git_stash() end, desc = 'Git Stash',},
    {'<leader>fgd', function() Snacks.picker.git_diff() end, desc = 'Git Diff (Hunks)',},
    {'<leader>fgf', function() Snacks.picker.git_log_file() end, desc = 'Git Log File',},
    -- gh
    {'<leader>fgi', function() Snacks.picker.gh_issue() end, desc = 'GitHub Issues (open)',},
    {'<leader>fgI', function() Snacks.picker.gh_issue({ state = 'all' }) end, desc = 'GitHub Issues (all)',},
    {'<leader>fgp', function() Snacks.picker.gh_pr() end, desc = 'GitHub Pull Requests (open)',},
    {'<leader>fgP', function() Snacks.picker.gh_pr({ state = 'all' }) end, desc = 'GitHub Pull Requests (all)',},
    -- Grep
    {'<leader>fsb', function() Snacks.picker.lines() end, desc = 'Buffer Lines',},
    {'<leader>fsB', function() Snacks.picker.grep_buffers() end, desc = 'Grep Open Buffers',},
    {'<leader>fsg', function() Snacks.picker.grep() end, desc = 'Grep',},
    {'<leader>fsw', function() Snacks.picker.grep_word() end, desc = 'Visual selection or word', mode = { 'n', 'x' },},
    -- search
    {'<leader>fs"', function() Snacks.picker.registers() end, desc = 'Registers',},
    {'<leader>fs/', function() Snacks.picker.search_history() end, desc = 'Search History',},
    {'<leader>fsa', function() Snacks.picker.autocmds() end, desc = 'Autocmds',},
    {'<leader>fsb', function() Snacks.picker.lines() end, desc = 'Buffer Lines',},
    {'<leader>fsc', function() Snacks.picker.command_history() end, desc = 'Command History',},
    {'<leader>fsC', function() Snacks.picker.commands() end, desc = 'Commands',},
    {'<leader>fsd', function() Snacks.picker.diagnostics() end, desc = 'Diagnostics',},
    {'<leader>fsD', function() Snacks.picker.diagnostics_buffer() end, desc = 'Buffer Diagnostics',},
    {'<leader>fsh', function() Snacks.picker.help() end, desc = 'Help Pages',},
    {'<leader>fsH', function() Snacks.picker.highlights() end, desc = 'Highlights',},
    {'<leader>fsi', function() Snacks.picker.icons() end, desc = 'Icons',},
    {'<leader>fsj', function() Snacks.picker.jumps() end, desc = 'Jumps',},
    {'<leader>fsk', function() Snacks.picker.keymaps() end, desc = 'Keymaps',},
    {'<leader>fsl', function() Snacks.picker.loclist() end, desc = 'Location List',},
    {'<leader>fsm', function() Snacks.picker.marks() end, desc = 'Marks',},
    {'<leader>fsM', function() Snacks.picker.man() end, desc = 'Man Pages',},
    {'<leader>fsp', function() Snacks.picker.lazy() end, desc = 'Search for Plugin Spec',},
    {'<leader>fsq', function() Snacks.picker.qflist() end, desc = 'Quickfix List',},
    {'<leader>fsR', function() Snacks.picker.resume() end, desc = 'Resume',},
    {'<leader>fsu', function() Snacks.picker.undo() end, desc = 'Undo History',},
    {'<leader>fuC', function() Snacks.picker.colorschemes() end, desc = 'Colorschemes',},
    -- LSP
    {'gd', function() Snacks.picker.lsp_definitions() end, desc = 'Goto Definition',},
    {'gD', function() Snacks.picker.lsp_declarations() end, desc = 'Goto Declaration',},
    {'gr', function() Snacks.picker.lsp_references() end, nowait = true, desc = 'References',},
    {'gI', function() Snacks.picker.lsp_implementations() end, desc = 'Goto Implementation',},
    {'gy', function() Snacks.picker.lsp_type_definitions() end, desc = 'Goto T[y]pe Definition',},
    {'gi', function() Snacks.picker.lsp_incoming_calls() end, desc = 'C[a]lls Incoming',},
    {'go', function() Snacks.picker.lsp_outgoing_calls() end, desc = 'C[a]lls Outgoing',},
    {'<leader>fo', function() Snacks.picker.lsp_symbols() end, desc = 'LSP Symbols',},
    {'<leader>fO', function() Snacks.picker.lsp_workspace_symbols() end, desc = 'LSP Workspace Symbols',},
  },

  opts = {
    bigfile = {
      enabled = true,
      notify = true,
      size = 1.5 * 1024 * 1024,
      line_length = 1000,
    },
    dashboard = {
      enabled = true,
      sections = {
        { section = 'header' },
        { icon = ' ', title = 'Keymaps', section = 'keys', indent = 2, padding = 1 },
        { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
        { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
        { section = 'startup' },
      },
    },
    dim = {
      enabled = true,
      scope = {
        min_size = 5,
        max_size = 20,
        siblings = true,
      },
      filter = function(buf)
        return vim.g.snacks_dim ~= false and vim.b[buf].snacks_dim ~= false and vim.bo[buf].buftype == ''
      end,
    },
    explorer = {
      enabled = true,
    },
    indent = {
      enabled = true,
    },
    input = {
      enabled = true,
    },
    picker = {
      enabled = true,
      ui_select = true,
      focus = 'list',
    },
    notifier = {
      enabled = true,
    },
    quickfile = {
      enabled = true,
    },
    scope = {
      enabled = true,
    },
    scroll = {
      enabled = true,
    },
    statuscolumn = {
      enabled = false,
    },
    words = {
      enabled = true,
    },
  },
}
