return {
    "lukas-reineke/indent-blankline.nvim",
    event = 'VeryLazy',
    main = "ibl",
    opts = function()
        local highlight = {
            -- "RainbowRed",
            -- "RainbowYellow",
            -- "RainbowBlue",
            -- "RainbowOrange",
            -- "RainbowGreen",
            -- "RainbowViolet",
            -- "RainbowCyan",
            "Gray"
        }

        local hooks = require "ibl.hooks"
        -- create the highlight groups in the highlight setup hook, so they are reset
        -- every time the colorscheme changes
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })

            vim.api.nvim_set_hl(0, "Layer1", { fg = "#E5B6BC" })
            vim.api.nvim_set_hl(0, "Layer2", { fg = "#E7CAB7" })
            vim.api.nvim_set_hl(0, "Layer3", { fg = "#E9E7CC" })
            vim.api.nvim_set_hl(0, "Layer4", { fg = "#C1DDC1" })
            vim.api.nvim_set_hl(0, "Layer5", { fg = "#ACD3E4" })

            vim.api.nvim_set_hl(0, "Gray", { fg = "#303030" })
        end)

        -- hooks.register(
        --   hooks.type.WHITESPACE,
        --   hooks.builtin.hide_tab_space_indent_level
        -- )

        return {
            enabled = true,
            indent = {
                char = '╎',
                highlight = highlight,
            },
            scope = {
                enabled = false,
            }
        }
    end
}
