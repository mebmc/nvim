return {
  'echasnovski/mini.nvim',
  lazy = false,

  config = function()
    require('mini.ai').setup({})
    require('mini.align').setup({})
    require('mini.comment').setup({})
    -- require('mini.completion').setup({})
    -- require('mini.keymap').setup({})
    require('mini.move').setup({
      mappings = {
        up = 'K',
        down = 'J',
        left = 'H',
        right = 'L',
        line_up = 'K',
        line_down = 'J',
        line_left = 'H',
        line_right = 'L',
      },

      options = {
        reindent_linewise = true,
      },
    })
    require('mini.operators').setup({})
    require('mini.pairs').setup({})
    require('mini.snippets').setup({})
    require('mini.splitjoin').setup({})
    require('mini.surround').setup({})

    -- require('mini.basics').setup({})
    require('mini.bracketed').setup({})
    -- require('mini.bufremove').setup({})
    require('mini.clue').setup({})
    -- require('mini.cmdline').setup({})
    -- require('mini.deps').setup({})
    require('mini.diff').setup({})
    require('mini.extra').setup({})
    require('mini.files').setup({})
    require('mini.git').setup({})
    require('mini.input').setup({})
    require('mini.jump').setup({})
    require('mini.jump2d').setup({
      view = {
        dim = true,
        n_steps_ahead = 0,
      },
      mappings = {
        start_jumping = '<CR>',
      },
    })
    require('mini.misc').setup({})
    require('mini.pick').setup({})
    require('mini.sessions').setup({})
    require('mini.visits').setup({})

    -- require('mini.animate').setup({})
    -- require('mini.base16').setup({})
    require('mini.colors').setup({})
    require('mini.cursorword').setup({})
    require('mini.hipatterns').setup({})
    -- require('mini.hues').setup({
    --     background = '#ff0000',
    --     foreground = '#00ff00',
    -- })
    require('mini.icons').setup({})
    -- require('mini.indentscope').setup({
    --   draw = {
    --     animation = require('mini.indentscope').gen_animation.none(),
    --   },
    -- })
    require('mini.map').setup({})
    require('mini.notify').setup({
      lsp_progress = {
        enable = false,
        level = 'INFO',
      },
      window = {
        config = function()
          local has_statusline = vim.o.laststatus > 0
          local pad = vim.o.cmdheight + (has_statusline and 1 or 0)

          return {
            anchor = 'SE',
            col = vim.o.columns,
            row = vim.o.lines - pad,
          }
        end,
      },
    })
    -- require('mini.starter').setup({})
    require('mini.statusline').setup({})
    require('mini.tabline').setup({})
    -- require('mini.trailspace').setup({
    --   only_in_normal_buffers = true,
    -- })
  end,
}
