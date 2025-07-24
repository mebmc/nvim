return {
    "glepnir/lspsaga.nvim",
    -- Force commit to avoid breaking change to diagnostics
    -- https://github.com/nvimdev/lspsaga.nvim/issues/1520
    commit = "13b3cdc9a53ec821b9e693ee71501cc2d6cf206c",
    event = "LspAttach",
    dependencies = {
        { "nvim-tree/nvim-web-devicons" },
        --Please make sure you install markdown and markdown_inline parser
        { "nvim-treesitter/nvim-treesitter" }
    },
    keys = {
        { "gl",               "<cmd>Lspsaga show_line_diagnostics<cr>",      desc = "line diagnostics" },
        { "<leader>v",        "",                                            desc = "lspsaga",              mode = { "n", "v" } },
        { "<leader>v<enter>", "<cmd>Lspsaga outline<cr>",                    desc = "outline" },
        { "<leader>vh",       "<cmd>Lspsaga finder<cr>",                     desc = "lsp finder" },
        { "<leader>va",       "<cmd>Lspsaga code_action<cr>",                desc = "code action" },
        { "<leader>vr",       "<cmd>Lspsaga rename<cr>",                     desc = "rename" },
        { "<leader>vR",       "<cmd>Lspsaga rename ++project<cr>",           desc = "rename project" },
        { "<leader>vd",       "<cmd>Lspsaga peek_definition<cr>",            desc = "peak definition" },
        { "<leader>vD",       "<cmd>Lspsaga goto_definition<cr>",            desc = "goto definition" },
        { "<leader>vt",       "<cmd>Lspsaga peek_type_definition<cr>",       desc = "peak type def" },
        { "<leader>vT",       "<cmd>Lspsaga goto_type_definition<cr>",       desc = "goto type def" },
        { "<leader>vl",       "<cmd>Lspsaga show_line_diagnostics<cr>",      desc = "line diagnostics" },
        { "<leader>vb",       "<cmd>Lspsaga show_buf_diagnostics<cr>",       desc = "buf diagnostics" },
        { "<leader>vw",       "<cmd>Lspsaga show_workspace_diagnostics<cr>", desc = "workspace diagnostics" },
        { "<leader>vC",       "<cmd>Lspsaga show_cursor_diagnostics<cr>",    desc = "cursor diagnostics" },
        { "<leader>vk",       "<cmd>Lspsaga hover_doc<cr>",                  desc = "hover doc" },
        { "<leader>vK",       "<cmd>Lspsaga hover_doc ++keep<cr>",           desc = "hover doc (Keep)" },
        { "<leader>vi",       "<cmd>Lspsaga incoming_calls<cr>",             desc = "incoming calls" },
        { "<leader>vo",       "<cmd>Lspsaga outgoing_calls<cr>",             desc = "outgoing calls" },
        { "<leader>vg",       "<cmd>Lspsaga term_toggle<cr>",                desc = "term toggle" },
        { "[e",               "<cmd>Lspsaga diagnostic_jump_prev<cr>",       desc = "diagnostic jump" },
        { "]e",               "<cmd>Lspsaga diagnostic_jump_next<cr>",       desc = "diagnostics jump" },
    },

    config = function()
        require("lspsaga").setup({
            -- severity_sort = true,
            callhierarchy = {
                keys = {
                    edit = { 'e', '<CR>' },
                    shuttle = { '[w', '<Tab>' },
                    split = { 'i', '\\' },
                    vsplit = { 's', '|' },
                    quit = { 'q', '<ESC>' },
                }
            },
            definition = {
                width = 0.6,
                height = 0.5,
            },
            diagnostic = {
                -- TODO: Make diagnostic float window bigger
                show_code_actions = true,
                jump_num_shortcut = true,
                max_width = 0.8,
                max_height = 0.8,
                show_layout = 'float',
                show_normal_height = 20,
                max_show_width = 0.9,
                max_show_height = 0.6,
                keys = {
                    quit = { 'q', 'c', '<ESC>' }
                }
            },
            hover = {
                max_width = 0.9,
                max_height = 0.8,
            },
            outline = {
                keys = {
                    jump = '<CR>'
                },
                auto_close = true,
                close_after_jump = false,
                detail = false,
                win_width = 35,
            },
            lightbulb = {
                enabled = true,
                sign = true,
                virtual_text = false,
            },
        })
    end
}
