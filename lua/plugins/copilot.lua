-- return {}
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "VeryLazy",
  opts = {
    panel = { enabled = false },
    -- panel = {
    --   enabled = true,
    --   auto_refresh = true,
    --   keymap = {
    --     jump_prev = "[[",
    --     jump_next = "]]",
    --     accept = "<CR>",
    --     refresh = "gr",
    --     open = "<C-P>"
    --   },
    --   layout = {
    --     position = "right", -- | top | left | right
    --     ratio = 0.4
    --   },
    -- },

    -- suggestion = { enabled = false },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<Tab>",
        accept_word = "<C-r>",
        accept_line = "<C-e>",
        next = "<C-n>",
        prev = "<C-S-n>",
        dismiss = "<Right>",
      },
    },
    filetypes = {
      yaml      = true,
      markdown  = true,
      help      = false,
      gitcommit = true,
      gitrebase = false,
      hgcommit  = false,
      svn       = false,
      cvs       = false,
      ["*"]     = true,
    },
    -- Node.js version must be > 20
    copilot_node_command = vim.fn.expand("$HOME") .. "/.local/share/mise/installs/node/22/bin/node",
    copilot_model = "gpt-4o-copilot",
    server_opts_overrides = {
      settings = {
        advanced = {
          listCount = 3,          -- #completions for panel
          inlineSuggestCount = 3, -- #completions for getCompletions
        }
      },
    },
  }
}
