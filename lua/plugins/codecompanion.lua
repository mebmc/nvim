return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",                                                                    -- Optional: For using slash commands and variables in the chat buffer
    "nvim-telescope/telescope.nvim",                                                       -- Optional: For using slash commands
    { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } }, -- Optional: For prettier markdown rendering
    { "stevearc/dressing.nvim",                    opts = {} },                            -- Optional: Improves `vim.ui.select`
  },
  event = "VeryLazy",
  config = true,
  keys = {
    {
      "<leader>ca",
      desc = "cc actions",
      mode = { "n", "v" },
      "<cmd>CodeCompanionActions<cr>",
    },
    {
      "<leader>cc",
      desc = "cc chat",
      mode = { "v", "n" },
      "<cmd>CodeCompanionChat Toggle<cr>",
    },
    { "ga", desc = "cc chat add", mode = "v", "<cmd>CodeCompanionChat Add<cr>" },
  },
  opts = {
    strategies = {
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot"
      }
    }
  },
}
