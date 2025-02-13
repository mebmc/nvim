return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "VeryLazy",
    opts = {
        suggestion = { enabled = false },
        panel = { enabled = false },
        -- panel = {
        --     enabled = false,
        --     auto_refresh = true,
        --     keymap = {
        --         jump_prev = "[[",
        --         jump_next = "]]",
        --         accept = "<CR>",
        --         refresh = "gr",
        --         open = "<M-CR>"
        --     },
        --     layout = {
        --         position = "right", -- | top | left | right
        --         ratio = 0.4
        --     },
        -- },
        -- suggestion = {
        --     enabled = false,
        --     auto_trigger = true,
        --     debounce = 75,
        --     keymap = {
        --         accept = "<S-Tab>",
        --         accept_word = "<C-s>",
        --         accept_line = "<C-y>",
        --         next = "<C-e>",
        --         prev = "<C-w>",
        --         dismiss = "<C-]>",
        --     },
        -- },
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
        copilot_node_command = 'node', -- Node.js version must be > 16.x
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
