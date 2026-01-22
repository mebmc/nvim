return {
  'mebmc/jjsigns.nvim',
  event = "VeryLazy",
  keys = {
    { "<leader>uj", desc = "JjSigns enable", mode = { "n", "v" }, "<cmd>JjSigns toggle<cr>" },
  },
  opts = {
    enabled = false,

    attach = {
      auto = true, -- Auto-attach to JJ repository files
    },

    signs = {
      add = { text = '┃', numhl = 'JjSignsAddNr', linehl = 'JjSignsAddLn' },
      change = { text = '┃', numhl = 'JjSignsChangeNr', linehl = 'JjSignsChangeLn' },
      delete = { text = '▁', numhl = 'JjSignsDeleteNr', linehl = 'JjSignsDeleteLn' },
      topdelete = { text = '▔', numhl = 'JjSignsDeleteNr', linehl = 'JjSignsDeleteLn' },
      changedelete = { text = '~', numhl = 'JjSignsChangeNr', linehl = 'JjSignsChangeLn' },
    },

    signcolumn = true,     -- Toggle with `:JjSigns toggle_signs`
    numhl = true,          -- Toggle with `:JjSigns toggle_numhl`
    linehl = true,         -- Toggle with `:JjSigns toggle_linehl`

    base = '@-',           -- Base revision to compare against (default: parent revision)

    update_debounce = 100, -- Debounce time for updates in milliseconds
  },
}
