local constants = {
  LLM_ROLE = "llm",
  USER_ROLE = "user",
  SYSTEM_ROLE = "system",
}

return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",                      -- Optional: For using slash commands and variables in the chat buffer
    "nvim-telescope/telescope.nvim",         -- Optional: For using slash commands
    -- { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } }, -- Optional: For prettier markdown rendering
    { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
  },
  event = "VeryLazy",
  config = true,
  keys = {
    { "<leader>e",  desc = "llm",         mode = { "n", "v" }, "" },
    { "<leader>eC", desc = "cmd",         mode = { "v", "n" }, ":CodeCompanionCmd " },
    { "<leader>eD", desc = "doc",         mode = { "n", "v" }, "<cmd>CodeCompanion /doc<cr>" },
    { "<leader>eG", desc = "generate",    mode = { "n", "v" }, "<cmd>CodeCompanion /generate<cr>" },
    { "<leader>ea", desc = "actions",     mode = { "n", "v" }, "<cmd>CodeCompanionActions<cr>" },
    { "<leader>ec", desc = "chat add",    mode = { "v" },      "<cmd>CodeCompanionChat Add<cr>" },
    { "<leader>ec", desc = "chat",        mode = { "n" },      "<cmd>CodeCompanionChat Toggle<cr>" },
    { "<leader>ed", desc = "comment",     mode = { "n", "v" }, "<cmd>CodeCompanion /comment<cr>" },
    { "<leader>ee", desc = "explain",     mode = { "n", "v" }, "<cmd>CodeCompanion /explain<cr>" },
    { "<leader>ef", desc = "fix",         mode = { "n", "v" }, "<cmd>CodeCompanion /fix<cr>" },
    { "<leader>eg", desc = "git commit",  mode = { "n", "v" }, "<cmd>CodeCompanion /commit<cr>" },
    { "<leader>ei", desc = "find",        mode = { "n", "v" }, "<cmd>CodeCompanion /find<cr>" },
    { "<leader>el", desc = "explain lsp", mode = { "n", "v" }, "<cmd>CodeCompanion /lsp<cr>" },
    { "<leader>ep", desc = "prompt",      mode = { "v", "n" }, ":CodeCompanion " },
    { "<leader>er", desc = "refactor",    mode = { "n", "v" }, "<cmd>CodeCompanion /refactor<cr>" },
    { "<leader>eu", desc = "unit tests",  mode = { "n", "v" }, "<cmd>CodeCompanion /tests<cr>" },
  },
  opts = {
    strategies = {
      chat = {
        adapter = "copilot",
        -- adapter = "gemini"
      },
      inline = {
        adapter = "copilot"
        -- adapter = "gemini"
      },
      cmd = {
        adapter = "copilot"
        -- adapter = "gemini"
      }
    },
    adapters = {
      gemini = function()
        return require("codecompanion.adapters").extend("gemini", {
          schema = {
            model = {
              default = "gemini-2.5-pro-exp-03-25",
            },
          },
        })
      end,
    },
    prompt_library = {
      ["Documentation generation (e.g., `/doc`)"] = {
        strategy = "chat",
        description = "Please generate documentation for the code in the buffer.",
        opts = {
          index = 6,
          is_default = true,
          is_slash_cmd = false,
          modes = { "v" },
          short_name = "doc",
          auto_submit = true,
          user_prompt = false,
          stop_context_insertion = true,
        },
        prompts = {
          {
            role = constants.SYSTEM_ROLE,
            content = [[When asked to document code, follow these steps:

1. Identify the programming language.
2. Describe the purpose of the code and reference core concepts from the programming language.
3. Explain each function or significant block of code, including parameters and return values.
4. Highlight any specific functions or methods used and their roles.
5. Provide context on how the code fits into a larger application if applicable.]],
            opts = {
              visible = false,
            },
          },
          {
            role = constants.USER_ROLE,
            content = function(context)
              local code = require("codecompanion.helpers.actions").get_code(context.start_line, context.end_line)

              return string.format(
                [[Please document this code from buffer %d:

```%s

%s
```
]],
                context.bufnr,
                context.filetype,
                code
              )
            end,
            opts = {
              contains_code = true,
            },
          },
        },
      },
      -- End prompt library
    }
  },
}
