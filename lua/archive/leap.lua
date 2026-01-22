return {
    {
        url = "https://codeberg.org/andyg/leap.nvim",
        dependencies = {
            'tpope/vim-repeat',
        },
        event = {
            "BufReadPre",
            "BufNewFile"
        },
        opts = {},
    }
    -- {
    --     "ggandor/flit.nvim",
    --     dependencies = {
    --         -- "ggandor/leap.nvim",
    --         url = "https://codeberg.org/andyg/leap.nvim",
    --     },
    --     event = {
    --         "BufReadPre",
    --         "BufNewFile"
    --     },
    -- }
}
