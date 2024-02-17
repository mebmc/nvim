return {
    "folke/noice.nvim",
    event = "VeryLazy",
    keys = {
        { "<leader>uD", function() require("notify").dismiss { pending = true, silent = true } end, desc = "Dismiss notifications" },
    },
    opts = {
        lsp = {
            signature = {
                enabled = false
            }
        },
        presents = {
            command_palette = true,
        }
    }
}
