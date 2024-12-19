return {
    "folke/which-key.nvim",
    event = {
        "BufReadPre",
        "BufNewFile"
    },

    opts = {
        mode = "n",
        noremap = true,
        icons = {
            breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
            separator  = "➜", -- symbol used between a key and it's label
            group      = "", -- symbol prepended to a group
        },
    },
    config = function(_, opts)
        require('which-key').setup(opts)

        require('which-key').add({
            { "<leader>L",  group = "location list" },
            { "<leader>O",  group = "obsidian" },
            { "<leader>b",  group = "buffers" },
            { "<leader>d",  group = "dap" },
            { "<leader>e",  group = "explorer" },
            { "<leader>f",  group = "find" },
            { "<leader>g",  group = "git" },
            { "<leader>c",  group = "code" },
            { "<leader>n",  group = "notes" },
            { "<leader>p",  group = "packages" },
            { "<leader>q",  group = "quit" },
            { "<leader>r",  group = "terminal" },
            { "<leader>s",  group = "split" },
            { "<leader>t",  group = "tabs" },
            { "<leader>u",  group = "user" },
            { "<leader>v",  group = "options" },
            { "<leader>w",  group = "write" },
            { "<leader>x",  group = "quickfix" },
        }
        )
        --     -- register which-key VISUAL mode
        --     -- required for visual <leader>hs (hunk stage) to work
        --     require('which-key').register({
        --         ['<leader>'] = { name = 'VISUAL <leader>' },
        --         ['<leader>h'] = { 'Git Hunk' },
        --     }, { mode = 'v' })
    end,
}
