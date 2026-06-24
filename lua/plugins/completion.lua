return {
  'saghen/blink.cmp',
  lazy = false,
  version = '1.*',
  dependencies = {
    'onsails/lspkind.nvim',
    'nvim-mini/mini.nvim',
    'Kaiser-Yang/blink-cmp-dictionary',
  },

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'default',
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },
      ['<C-enter>'] = { 'accept', 'fallback' },
      ['<enter>'] = { 'accept', 'fallback' },
      ['<S-enter>'] = { 'fallback' },
    },

    appearance = {
      nerd_font_variant = 'mono',
    },

    completion = {
      documentation = {
        auto_show = true,
      },

      menu = {
        draw = {
          components = {
            kind_icon = {
              text = function(ctx)
                if ctx.source_name ~= 'Path' then
                  return require('lspkind').symbol_map[ctx.kind] or '' .. ctx.icon_gap
                end

                local is_unknown_type =
                  vim.tbl_contains({ 'link', 'socket', 'fifo', 'char', 'block', 'unknown' }, ctx.item.data.type)
                local mini_icon, _ = require('mini.icons').get(
                  is_unknown_type and 'os' or ctx.item.data.type,
                  is_unknown_type and '' or ctx.label
                )

                return (mini_icon or ctx.kind_icon) .. ctx.icon_gap
              end,

              highlight = function(ctx)
                if ctx.source_name ~= 'Path' then
                  return ctx.kind_hl
                end

                local is_unknown_type =
                  vim.tbl_contains({ 'link', 'socket', 'fifo', 'char', 'block', 'unknown' }, ctx.item.data.type)
                local mini_icon, mini_hl = require('mini.icons').get(
                  is_unknown_type and 'os' or ctx.item.data.type,
                  is_unknown_type and '' or ctx.label
                )
                return mini_icon ~= nil and mini_hl or ctx.kind_hl
              end,
            },
          },
        },
      },
    },

    sources = {
      default = {
        'lazydev',
        'lsp',
        'path',
        'snippets',
        'dictionary',
        'buffer',
      },
      providers = {
        lazydev = {
          name = 'LazyDev',
          module = 'lazydev.integrations.blink',
          score_offset = 100,
        },
        path = {
          opts = {
            get_cwd = function(_)
              return vim.fn.getcwd()
            end,
          },
        },
        dictionary = {
          module = 'blink-cmp-dictionary',
          name = 'Dict',
          min_keyword_length = 2,
          opts = {
            dictionary_files = {
              vim.fn.expand('~/.config/nvim/dictionary/custom.dict'),
            },
          },
        },
        buffer = {
          opts = {
            -- get_bufnrs = vim.api.nvim_list_bufs,

            get_bufnrs = function()
              return vim.tbl_filter(function(bufnr)
                return vim.bo[bufnr].buftype == ''
              end, vim.api.nvim_list_bufs())
            end,
          },
        },
      },
    },

    fuzzy = {
      implementation = 'prefer_rust_with_warning',
    },
  },
  opts_extend = {
    'sources.default',
  },
}
