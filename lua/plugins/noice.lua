return {
  'folke/noice.nvim',
  lazy = false,
  priority = 1000,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  keys = {
    {
      '<leader>uD',
      function()
        require('notify').dismiss { pending = true, silent = true }
      end,
      desc = 'Dismiss notifications',
    },
  },
  opts = {
    notify = {
      enabled = true,
    },
    cmdline = {
      enabled = true,
      view = 'cmdline_popup',
    },
    popupmenu = {
      enabled = true, -- enables the Noice popupmenu UI
      ---@type 'nui'|'cmp'
      backend = 'nui', -- backend to use to show regular cmdline completions
      ---@type NoicePopupmenuItemKind|false
      -- Icons for completion item kinds (see defaults at noice.config.icons.kinds)
      kind_icons = {}, -- set to `false` to disable icons
    },
    lsp = {
      progress = {
        enabled = true,
        throttle = 1000 / 30,
      },
      signature = {
        enabled = false,
      },
      message = {
        enabled = true,
        view = 'notify',
        opts = {},
      },
    },
    messages = {
      enabled = true,
      view = 'notify',
      view_error = 'notify',
      view_warn = 'notify',
      view_history = 'messages',
      view_search = 'virtualtext',
    },
    presets = {
      command_palette = true,
    },
    routes = {
      {
        filter = {
          event = 'lsp',
          kind = 'progress',
        },
        opts = { skip = true },
      },
      {
        filter = {
          event = 'lsp',
          kind = 'message',
        },
        opts = { skip = true },
      },
    },
  },
}
