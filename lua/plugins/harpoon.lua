return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = 'VeryLazy',
  dependencies = {
    -- https://github.com/nvim-lua/plenary.nvim
    'nvim-lua/plenary.nvim',
  },
  keys = {
    {
      "<leader><enter>",
      desc = "harpoon list",
      mode = { "n", "v" },
      function()
        local harpoon = require('harpoon')
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end
    },
    {
      "<leader>H",
      desc = "harpoon add",
      mode = { "n", "v" },
      function() return require('harpoon'):list():add() end
    },
    {
      "<leader>1",
      desc = "harpoon 1",
      mode = { "n", "v" },
      function() return require('harpoon'):list():select(1) end
    },
    {
      "<leader>2",
      desc = "harpoon 2",
      mode = { "n", "v" },
      function() return require('harpoon'):list():select(2) end
    },
    {
      "<leader>3",
      desc = "harpoon 3",
      mode = { "n", "v" },
      function() return require('harpoon'):list():select(3) end
    },
    {
      "<leader>4",
      desc = "harpoon 4",
      mode = { "n", "v" },
      function() return require('harpoon'):list():select(4) end
    },
    {
      "<leader>5",
      desc = "harpoon 5",
      mode = { "n", "v" },
      function() return require('harpoon'):list():select(5) end
    },
    {
      "<leader>6",
      desc = "harpoon 6",
      mode = { "n", "v" },
      function() return require('harpoon'):list():select(6) end
    },
    {
      "<leader>7",
      desc = "harpoon 7",
      mode = { "n", "v" },
      function() return require('harpoon'):list():select(7) end
    },
  },
  opts = {
    menu = {
      width = 120
    }
  },
}

