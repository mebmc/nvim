return {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
        { "nvim-tree/nvim-web-devicons" },
        --Please make sure you install markdown and markdown_inline parser
        { "nvim-treesitter/nvim-treesitter" }
    },
    opts = {
        outline = {
            keys = {
                toggle_or_jump = '<CR>'
            },
            auto_close = true,
            close_after_jump = true,
        },
        lightbulb = {
            enabled = true,
            sign = true,
            virtual_text = false,
        },
    },
}
