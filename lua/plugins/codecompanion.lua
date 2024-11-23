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
  lazy = false,
  config = true,
  keys = {
    {
      "<leader>a",
      desc = "CC Actions",
      mode = { "n", "v" },
      "<cmd>CodeCompanionActions<cr>",
    },
    {
      "<leader>c",
      desc = "CC Chat",
      mode = { "n", "v" },
      "<cmd>CodeCompanionChat Toggle<cr>",
    },
    { "ga", desc = "CC Chat Add", mode = "v", "<cmd>CodeCompanionChat Add<cr>" },
  },
  opts = {
    strategies = {
      chat = {
        adapter = "copilot",
        -- adapter = "ollama",
      },
      inline = {
        adapter = "copilot",
        -- adapter = "ollama",
      },
    },

    adapters = {
      ollama = function()
        return require("codecompanion.adapters").extend("ollama", {
          env = {
            url = "http://kelso:11434",
          },
          headers = {
            ["Content-Type"] = "application/json",
          },
          parameters = {
            sync = true,
          },
          schema = {
            model = {
              default = "smollm2:1.7b"
            }
          }
        })
      end,
      opts = {
        allow_insecure = true,
      }
    },
  },
}
