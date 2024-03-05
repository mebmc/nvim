return {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
        { "nvim-tree/nvim-web-devicons" },
        --Please make sure you install markdown and markdown_inline parser
        { "nvim-treesitter/nvim-treesitter" }
    },
    config = function()
        require("lspsaga").setup({
            definition = {
                width = 0.6,
                height = 0.5,
            },
            diagnostic = {
                -- TODO: Make diagnostic float window bigger
                max_width = 0.8,
                max_height = 0.8,
                show_normal_height = 20,
                max_show_width = 0.9,
                max_show_height = 0.6,
                keys = {
                    quit = { 'c', '<ESC>' }
                }
            },
            hover = {
                max_width = 0.9,
                max_height = 0.8,
            },
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
        })
    end
}
