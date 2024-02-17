-- https://github.com/akinsho/toggleterm.nvim
return {
    "akinsho/toggleterm.nvim",
    event = {
        "VeryLazy",
    },
    cmd = {
        "ToggleTerm",
        "TermExec"
    },
    opts = {
        user_terminals = {},
        autochdir = true,
        start_in_insert = true,
    },
    config = true
}
