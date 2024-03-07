return {
    "folke/noice.nvim",
    dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    },
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
