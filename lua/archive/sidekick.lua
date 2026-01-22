return {
  "folke/sidekick.nvim",
  cmd = "Sidekick",
  event = "VeryLazy",
  keys = {
    {
      "<tab>",
      function()
        -- if there is a next edit, jump to it, otherwise apply it if any
        if not require("sidekick").nes_jump_or_apply() then
          return "<Tab>" -- fallback to normal tab
        end
      end,
      expr = true,
      desc = "Goto/Apply Next Edit Suggestion",
    },
    {
      "<c-e>",
      function() require("sidekick.cli").toggle() end,
      desc = "Sidekick Toggle",
      mode = { "n", "t", "i", "x" }
    },
    {
      "<leader>Ea",
      function() sk.toggle() end,
      desc = "Sidekick Toggle"
    },
    {
      "<leader>Es",
      function() require("sidekick.cli").select({ filter = { installed = true } }) end,
      desc = "Select CLI"
    },
    {
      "<leader>Ed",
      function() require("sidekick.cli").close() end,
      desc = "Detach Session"
    },
    {
      "<leader>Et",
      function() require("sidekick.cli").send({ msg = "{this}" }) end,
      mode = { "x", "n" },
      desc = "Send This"
    },
    {
      "<leader>Ef",
      function() require("sidekick.cli").send({ msg = "{file}" }) end,
      desc = "Send File"
    },
    {
      "<leader>Ev",
      function() require("sidekick.cli").send({ msg = "{selection}" }) end,
      mode = { "x" },
      desc = "Send Visual Selection"
    },
    {
      "<leader>Ep",
      function() require("sidekick.cli").prompt() end,
      mode = { "n", "x" },
      desc = "Sidekick Select Prompt",
    },
    -- Example of a keybinding to open Claude directly
    {
      "<leader>Ec",
      function() require("sidekick.cli").toggle({ name = "codex", focus = true }) end,
      desc = "Sidekick Toggle Codex",
    },
  },
  opts = {
    cli = {
      watch = true,
      win = {
        layout = "right",
        float = {
          width = 0.3,
          height = 0.9,
        },
        split = {
          width = 50,
          height = 20,
        },
      },
      nes = {
        enabled = false
      },
      mux = {
        backend = "tmux",
        enabled = true,
        create = "terminal",
        split = {
          vertical = true,
          size = 0.1,
        },
      },
    },
  },
}
