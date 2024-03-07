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
        -- defaults = {
        --     ["<leader>f"]     = { name = "󰍉 File/Find" },
        --     ["<leader>p"]     = { name = "󰏖 Packages" },
        --     ["<leader>l"]     = { name = " LSP" },
        --     ["<leader>u"]     = { name = " UI" },
        --     ["<leader>b"]     = { name = "󰓩 Buffers" },
        --     ["<leader>bs"]    = { name = "󰒺 Sort Buffers" },
        --     ["<leader>d"]     = { name = " Debugger" },
        --     ["<leader>g"]     = { name = "󰊢 Git" },
        --     ["<leader>t"]     = { name = " Terminal" },
        --     ["<leader><tab>"] = { name = "󰫍 Tabs" },
        --     ["<leader>c"]     = { name = " Code" },
        --     ["<leader>gh"]    = { name = " Hunks" },
        --     ["<leader>q"]     = { name = "󱂬 Quit/Session" },
        --     ["<leader>s"]     = { name = " Search" },
        --     ["<leader>w"]     = { name = " Windows" },
        --     ["<leader>x"]     = { name = " Diagnostics/Quickfix" },
        --     ["<leader>k"]     = { name = " User" },
        -- }
    },
    config = function(_, opts)
        require('which-key').setup(opts)

        -- document existing key chains
        require('which-key').register {
            ['<leader>a'] = { name = 'ai', _ = 'which_key_ignore' },
            -- ['<leader>aB'] = { name = 'Backseat', _ = 'which_key_ignore' },
            -- ['<leader>aC'] = { name = 'Cody', _ = 'which_key_ignore' },
            -- ['<leader>aD'] = { name = 'Codeium', _ = 'which_key_ignore' },
            -- ['<leader>aG'] = { name = 'Gen', _ = 'which_key_ignore' },
            -- ['<leader>aN'] = { name = 'NeoAI', _ = 'which_key_ignore' },
            -- ['<leader>aP'] = { name = 'Copilot', _ = 'which_key_ignore' },
            -- ['<leader>aT'] = { name = 'ChatGPT', _ = 'which_key_ignore' },
            ['<leader>b'] = { name = 'buffers', _ = 'which_key_ignore' },
            -- ['<leader>c'] = { name = 'copilot', _ = 'which_key_ignore' },
            ['<leader>d'] = { name = 'dap', _ = 'which_key_ignore' },
            ['<leader>e'] = { name = 'explorer', _ = 'which_key_ignore' },
            ['<leader>f'] = { name = 'find', _ = 'which_key_ignore' },
            ['<leader>g'] = { name = 'git', _ = 'which_key_ignore' },
            -- ['<leader>gl'] = { name = 'gitlab', _ = 'which_key_ignore' },
            -- ['<leader>gla'] = { name = 'gitlab assignee', _ = 'which_key_ignore' },
            -- ['<leader>gll'] = { name = 'gitlab label', _ = 'which_key_ignore' },
            -- ['<leader>glr'] = { name = 'gitlab reviewer', _ = 'which_key_ignore' },
            ['<leader>h'] = { name = 'harpoon', _ = 'which_key_ignore' },
            ['<leader>l'] = { name = 'lsp', _ = 'which_key_ignore' },
            ['<leader>L'] = { name = 'location list', _ = 'which_key_ignore' },
            ['<leader>O'] = { name = 'obsidian', _ = 'which_key_ignore' },
            ['<leader>p'] = { name = 'packages', _ = 'which_key_ignore' },
            ['<leader>q'] = { name = 'quit', _ = 'which_key_ignore' },
            ['<leader>r'] = { name = 'terminal', _ = 'which_key_ignore' },
            ['<leader>s'] = { name = 'split', _ = 'which_key_ignore' },
            ['<leader>t'] = { name = 'tabs', _ = 'which_key_ignore' },
            ['<leader>u'] = { name = 'user', _ = 'which_key_ignore' },
            ['<leader>w'] = { name = 'write', _ = 'which_key_ignore' },
            ['<leader>x'] = { name = 'quickfix', _ = 'which_key_ignore' },
        }
        --     -- register which-key VISUAL mode
        --     -- required for visual <leader>hs (hunk stage) to work
        --     require('which-key').register({
        --         ['<leader>'] = { name = 'VISUAL <leader>' },
        --         ['<leader>h'] = { 'Git Hunk' },
        --     }, { mode = 'v' })
    end,
}
