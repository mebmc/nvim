return {
    "fedepujol/move.nvim",
    cmd = {
        "MoveLine",
        "MoveHChar",
        "MoveWord",
        "MoveBlock",
        "MoveHBlock"
    },
    event = {
        "BufReadPre",
        "BufNewFile"
    },
    keys = {
        { "<A-S-j>",    "<cmd>MoveLine(1)<CR>",   desc = "move live forward",  mode = { "n", "v" } },
        { "<A-S-k>",    "<cmd>MoveLine(-1)<CR>",  desc = "move line backward", mode = { "n", "v" } },
        { "<A-S-h>",    "<cmd>MoveHChar(-1)<CR>", desc = "move char backward", mode = { "n", "v" } },
        { "<A-S-l>",    "<cmd>MoveHChar(1)<CR>",  desc = "move char forward",  mode = { "n", "v" } },
        { "<leader>m",  "",                       desc = "move",               mode = "x" },
        { "<leader>mf", "<cmd>MoveWord(1)<CR>",   desc = "move word forward",  mode = "x" },
        { "<leader>mb", "<cmd>MoveWord(-1)<CR>",  desc = "move word backward", mode = "x" },
    }
}


-- local opts = { noremap = true, silent = true }
-- -- Normal-mode commands
-- vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
-- vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
-- vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
-- vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', opts)
-- vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
-- vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)
--
-- -- Visual-mode commands
-- vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
-- vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
-- vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
-- vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)
