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
        cmdline = {
            enabled = true,
            view = "cmdline_popup",
        },
        popupmenu = {
            enabled = true, -- enables the Noice popupmenu UI
            ---@type 'nui'|'cmp'
            backend = "nui", -- backend to use to show regular cmdline completions
            ---@type NoicePopupmenuItemKind|false
            -- Icons for completion item kinds (see defaults at noice.config.icons.kinds)
            kind_icons = {}, -- set to `false` to disable icons
        },
        lsp = {
            progress = {
                enabled = true,
            },
            signature = {
                enabled = false
            }
        },
        presents = {
            command_palette = true,
        },
    }
}
