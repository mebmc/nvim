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
            { "<leader>1", hidden = true,      mode = { "n", "v" } },
            { "<leader>2", hidden = true,      mode = { "n", "v" } },
            { "<leader>3", hidden = true,      mode = { "n", "v" } },
            { "<leader>4", hidden = true,      mode = { "n", "v" } },
            { "<leader>5", hidden = true,      mode = { "n", "v" } },
            { "<leader>6", hidden = true,      mode = { "n", "v" } },
            { "<leader>7", hidden = true,      mode = { "n", "v" } },
            { "<leader>8", hidden = true,      mode = { "n", "v" } },
            { "<leader>9", hidden = true,      mode = { "n", "v" } },
            { "<leader>L", group = "location", mode = { "n", "v" } },
            { "<leader>O", group = "obsidian", mode = { "n", "v" } },
            { "<leader>b", group = "buffers",  mode = { "n", "v" } },
            { "<leader>d", group = "dap",      mode = { "n", "v" } },
            { "<leader>e", group = "llm",      mode = { "n", "v" } },
            { "<leader>f", group = "find",     mode = { "n", "v" } },
            { "<leader>g", group = "git",      mode = { "n", "v" } },
            { "<leader>n", group = "notes",    mode = { "n", "v" } },
            { "<leader>p", group = "packages", mode = { "n", "v" } },
            { "<leader>q", group = "quit",     mode = { "n", "v" } },
            { "<leader>r", group = "terminal", mode = { "n", "v" } },
            { "<leader>s", group = "split",    mode = { "n", "v" } },
            { "<leader>t", group = "tabs",     mode = { "n", "v" } },
            { "<leader>u", group = "options",  mode = { "n", "v" } },
            { "<leader>v", group = "lspsaga",  mode = { "n", "v" } },
            { "<leader>w", group = "write",    mode = { "n", "v" } },
            { "<leader>x", group = "quickfix", mode = { "n", "v" } },
        })
    end,
}
