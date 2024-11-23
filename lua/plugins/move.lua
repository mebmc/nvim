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
        { "<A-S-j>",    "<cmd>MoveLine(1)<CR>",    mode = { "n", "v" } },
        { "<A-S-k>",    "<cmd>MoveLine(-1)<CR>",   mode = { "n", "v" } },
        { "<A-S-h>",    "<cmd>MoveHChar(-1)<CR>",  mode = { "n", "v" } },
        { "<A-S-l>",    "<cmd>MoveHChar(1)<CR>",   mode = { "n", "v" } },
        { "<leader>wf", "<cmd>MoveWord(1)<CR>",    mode = "x" },
        { "<leader>wb", "<cmd>MoveWord(-1)<CR>",   mode = "x" },
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
