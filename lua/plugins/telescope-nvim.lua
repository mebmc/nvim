-- Fuzzy finder
return {
  'nvim-telescope/telescope.nvim',
  lazy = true,
  branch = '0.1.x',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'jvgrootveld/telescope-zoxide' },
    { 'nvim-telescope/telescope-file-browser.nvim' },
    { 'LukasPietzschmann/telescope-tabs' },
  },
  keys = {
    { "<C-o>",           desc = "old files",  mode = { "n" },      require("telescope.builtin").oldfiles },
    { "<C-p>",           desc = "find files", mode = { "n" },      require("telescope.builtin").find_files },
    -- { "<leader><space>", desc = "tabs", mode = {"n"}, function() require("telescope-tabs").list_tabs() end },
    { "<leader>f",       desc = "find",       mode = { "n", "v" }, "" },
    { "<leader><space>", desc = "buffers",    mode = { "n" },      require("telescope.builtin").buffers },
    { "<leader>ff",      desc = "find files", mode = { "n" },      require("telescope.builtin").find_files },
    { "<leader>fg",      desc = "live grep",  mode = { "n" },      require("telescope.builtin").live_grep },
    { "<leader>fb",      desc = "buffers",    mode = { "n" },      require("telescope.builtin").buffers },
    {
      "<leader>ft",
      desc = "tabs",
      mode = { "n" },
      function()
        require("telescope-tabs")
            .list_tabs()
      end
    },
    { "<leader>fh", desc = "help tags",            mode = { "n" }, require("telescope.builtin").help_tags },
    { "<leader>fB", desc = "current buffer",       mode = { "n" }, require("telescope.builtin").current_buffer_fuzzy_find },
    { "<leader>fo", desc = "lsp document symbols", mode = { "n" }, require("telescope.builtin").lsp_document_symbols },
    { "<leader>fi", desc = "lsp incoming calls",   mode = { "n" }, require("telescope.builtin").lsp_incoming_calls },
    {
      "<leader>fm",
      desc = "treesitter methods",
      mode = { "n" },
      function()
        require("telescope.builtin")
            .treesitter({ default_text = ":method:" })
      end
    },
    { "<leader>fs", desc = "session list",    mode = { "n" }, "<cmd>Telescope neovim-project discover<CR>" },
    { "<leader>fS", desc = "session history", mode = { "n" }, "<cmd>Telescope neovim-project history<CR>" },
  },
  opts = function()
    local actions = require "telescope.actions"
    -- local get_icon = require("astronvim.utils").get_icon

    -- require("telescope").load_extension('fzf')
    -- Enable telescope fzf native, if installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'zoxide')
    pcall(require('telescope').load_extension, 'file_browser')
    pcall(require('telescope').load_extension, 'telescope-tabs')

    -- Telescope live_grep in git root
    -- Function to find the git root directory based on the current buffer's path
    local function find_git_root()
      -- Use the current buffer's path as the starting point for the git search
      local current_file = vim.api.nvim_buf_get_name(0)
      local current_dir
      local cwd = vim.fn.getcwd()
      -- If the buffer is not associated with a file, return nil
      if current_file == '' then
        current_dir = cwd
      else
        -- Extract the directory from the current file's path
        current_dir = vim.fn.fnamemodify(current_file, ':h')
      end

      -- Find the Git root directory from the current file's path
      local git_root = vim.fn.systemlist('git -C ' ..
        vim.fn.escape(current_dir, ' ') .. ' rev-parse --show-toplevel')[1]
      if vim.v.shell_error ~= 0 then
        print 'Not a git repository. Searching on current working directory'
        return cwd
      end
      return git_root
    end

    -- Custom live_grep function to search in git root
    local function live_grep_git_root()
      local git_root = find_git_root()
      if git_root then
        require('telescope.builtin').live_grep {
          search_dirs = { git_root },
        }
      end
    end

    vim.api.nvim_create_user_command('LiveGrepGitRoot', live_grep_git_root, {})

    return {
      defaults = {
        git_worktrees = vim.g.git_worktrees,
        prompt_prefix = "> ",
        selection_caret = "> ",
        path_display = { "truncate" },
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = { prompt_position = "top", preview_width = 0.55 },
          vertical = { mirror = false },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        mappings = {
          i = {
            ["<C-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
          n = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            q = actions.close
          },
        },
        pickers = {
          find_files = {
            find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          }
        }
      },
    }
  end,
}
