return {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
        { "nvim-tree/nvim-web-devicons" },
        --Please make sure you install markdown and markdown_inline parser
        { "nvim-treesitter/nvim-treesitter" }
    },
    keys = {
        { "gl",         "<cmd>Lspsaga show_line_diagnostics<cr>",      desc = "line diagnostics" },
        { "<leader>ch", "<cmd>Lspsaga finder<cr>",                     desc = "lsp finder" },
        { "<leader>cv", "<cmd>Lspsaga code_action<cr>",                desc = "code action" },
        { "<leader>cr", "<cmd>Lspsaga rename<cr>",                     desc = "rename" },
        { "<leader>cR", "<cmd>Lspsaga rename ++project<cr>",           desc = "rename project" },
        { "<leader>cd", "<cmd>Lspsaga peek_definition<cr>",            desc = "peak definition" },
        { "<leader>cD", "<cmd>Lspsaga goto_definition<cr>",            desc = "goto definition" },
        { "<leader>ct", "<cmd>Lspsaga peek_type_definition<cr>",       desc = "peak type def" },
        { "<leader>cT", "<cmd>Lspsaga goto_type_definition<cr>",       desc = "goto type def" },
        { "<leader>cl", "<cmd>Lspsaga show_line_diagnostics<cr>",      desc = "line diagnostics" },
        { "<leader>cb", "<cmd>Lspsaga show_buf_diagnostics<cr>",       desc = "buf diagnostics" },
        { "<leader>cw", "<cmd>Lspsaga show_workspace_diagnostics<cr>", desc = "workspace diagnostics" },
        { "<leader>cC", "<cmd>Lspsaga show_cursor_diagnostics<cr>",    desc = "cursor diagnostics" },
        { "<leader>co", "<cmd>Lspsaga outline<cr>",                    desc = "outline" },
        { "<leader>ck", "<cmd>Lspsaga hover_doc<cr>",                  desc = "hover doc" },
        { "<leader>cK", "<cmd>Lspsaga hover_doc ++keep<cr>",           desc = "hover doc (Keep)" },
        { "<leader>cI", "<cmd>Lspsaga incoming_calls<cr>",             desc = "incoming calls" },
        { "<leader>cO", "<cmd>Lspsaga outgoing_calls<cr>",             desc = "outgoing calls" },
        { "<leader>ct", "<cmd>Lspsaga term_toggle<cr>",                desc = "term toggle" },
        { "[e",         "<cmd>Lspsaga diagnostic_jump_prev<cr>",       desc = "diagnostic jump" },
        { "]e",         "<cmd>Lspsaga diagnostic_jump_next<cr>",       desc = "diagnostics jump" },
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
