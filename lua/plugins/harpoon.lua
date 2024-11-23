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
      "<leader>h",
      desc = "Harpoon",
      mode = { "n", "v" },
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
    },
    {
      "<leader>H",
      desc = "Harpoon Add",
      mode = { "n", "v" },
      "<cmd>lua require('harpoon.mark').add_file()<cr>",
    },
    {
      "<leader>1",
      desc = "Harpoon Jump 1",
      mode = { "n", "v" },
      "<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
    },
    {
      "<leader>2",
      desc = "Harpoon Jump 2",
      mode = { "n", "v" },
      "<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
    },
    {
      "<leader>3",
      desc = "Harpoon Jump 3",
      mode = { "n", "v" },
      "<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
    },
    {
      "<leader>4",
      desc = "Harpoon Jump 4",
      mode = { "n", "v" },
      "<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
    },
    {
      "<leader>5",
      desc = "Harpoon Jump 5",
      mode = { "n", "v" },
      "<cmd>lua require('harpoon.ui').nav_file(5)<cr>",
    },
    {
      "<leader>6",
      desc = "Harpoon Jump 6",
      mode = { "n", "v" },
      "<cmd>lua require('harpoon.ui').nav_file(6)<cr>",
    },
    {
      "<leader>7",
      desc = "Harpoon Jump 7",
      mode = { "n", "v" },
      "<cmd>lua require('harpoon.ui').nav_file(7)<cr>",
    },
  },
  opts = {
    menu = {
      width = 120
    }
  },
}

