-- Auto-completion / Snippets
-- return {}
return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    -- Snippet engine & associated nvim-cmp source
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',

    -- LSP completion capabilities
    'hrsh7th/cmp-nvim-lsp',

    -- Additional user-friendly snippets
    'rafamadriz/friendly-snippets',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',

    "hrsh7th/cmp-nvim-lsp-document-symbol",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-emoji",
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-nvim-lua",
    "onsails/lspkind.nvim",
    "lukas-reineke/cmp-under-comparator",
    "davidsierradz/cmp-conventionalcommits",
    "chrisgrieser/cmp-nerdfont",
    "Saecki/crates.nvim",
    "ray-x/cmp-treesitter",
    "uga-rosa/cmp-dictionary",
    "andersevenrud/cmp-tmux",
    "petertriho/cmp-git",
    "David-Kunz/cmp-npm",
    "KadoBOT/cmp-plugins",
    "olimorris/codecompanion.nvim",
    "milanglacier/minuet-ai.nvim",
    "zbirenbaum/copilot-cmp",
    -- "jcdickinson/codeium.nvim",

  },
  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    require('luasnip.loaders.from_vscode').lazy_load()
    luasnip.config.setup({})

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      preselect = 'none',
      completion = {
        completeopt = 'menu,menuone,noinsert,noselect',
      },
      mapping = cmp.mapping.preset.insert {
        ['<C-j>'] = cmp.mapping.select_next_item(), -- next suggestion
        ['<C-k>'] = cmp.mapping.select_prev_item(), -- previous suggestion
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),    -- scroll backward
        ['<C-f>'] = cmp.mapping.scroll_docs(4),     -- scroll forward
        ['<C-Space>'] = cmp.mapping.complete {},    -- show completion suggestions
        ['<CR>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Insert,
          select = false,
        },
        ['<Left>'] = vim.schedule_wrap(function(fallback)
          if cmp.visible() then
            cmp.close();
          else
            fallback()
          end
        end),
        ['<Right>'] = vim.schedule_wrap(function(fallback)
          if cmp.visible() then
            cmp.close();
          else
            fallback()
          end
        end),
        ['<C-n>'] = vim.schedule_wrap(function(fallback)
          if cmp.visible() then
            cmp.mapping.abort();
            fallback()
          else
            fallback()
          end
        end),
        ['<C-N>'] = vim.schedule_wrap(function(fallback)
          if cmp.visible() then
            cmp.mapping.abort();
            fallback()
          else
            fallback()
          end
        end),
        ["<Up>"] = vim.schedule_wrap(function(fallback)
          if cmp.visible() then
            cmp.mapping.abort();
            fallback()
          else
            fallback()
          end
        end),
        ["<Down>"] = vim.schedule_wrap(function(fallback)
          if cmp.visible() then
            cmp.mapping.abort();
            fallback()
          else
            fallback()
          end
        end),
        -- -- Tab through suggestions or when a snippet is active, tab to the next argument
        -- ['<Tab>'] = cmp.mapping(function(fallback)
        --   if cmp.visible() then
        --     cmp.select_next_item()
        --   elseif luasnip.expand_or_locally_jumpable() then
        --     luasnip.expand_or_jump()
        --   else
        --     fallback()
        --   end
        -- end, { 'i', 's' }),
        -- -- Tab backwards through suggestions or when a snippet is active, tab to the next argument
        -- ['<S-Tab>'] = cmp.mapping(function(fallback)
        --   if cmp.visible() then
        --     cmp.select_prev_item()
        --   elseif luasnip.locally_jumpable(-1) then
        --     luasnip.jump(-1)
        --   else
        --     fallback()
        --   end
        -- end, { 'i', 's' }),
      },
      sources = cmp.config.sources({
        -- { name = "copilot",                      priority = 5000, keyword_length = 2 },
        { name = "minuet",                       priority = 4000, keyword_length = 2 },
        { name = "nvim_lsp",                     priority = 1500, keyword_length = 2 },
        { name = "nvim_lsp_document_symbol",     priority = 1500, keyword_length = 2 },
        { name = "nvim_lsp_signature_help",      priority = 1500, keyword_length = 2 },
        -- { name = "codeium",                      priority = 1000, keyword_length = 2 },
        { name = "codecompanion_models",         priority = 800,  keyword_length = 2 },
        { name = "codecompanion_slash_commands", priority = 800,  keyword_length = 2 },
        { name = "codecompanion_tools",          priority = 800,  keyword_length = 2 },
        { name = "codecompanion_variables",      priority = 800,  keyword_length = 2 },
        { name = "luasnip",                      priority = 750,  keyword_length = 2 },
        { name = "buffer",                       priority = 500,  keyword_length = 2 },
        { name = "nerdfont",                     priority = 300,  keyword_length = 2 },
        { name = "path",                         priority = 250,  keyword_length = 2 },
        { name = "calc",                         priority = 250,  keyword_length = 2 },
        { name = "crates",                       priority = 200,  keyword_length = 2 },
        { name = "conventionalcommits",          priority = 200,  keyword_length = 2 },
        { name = "treesitter",                   priority = 200,  keyword_length = 2 },
        { name = "emoji",                        priority = 100,  keyword_length = 2 },
        { name = "dictionary",                   priority = 100,  keyword_length = 2 },
        { name = "spell",                        priority = 100,  keyword_length = 2 },
        { name = "tmux",                         priority = 100,  keyword_length = 2, option = { label = '[tmux]' } },
        { name = "git",                          priority = 200,  keyword_length = 2 },
        { name = "npm",                          priority = 200,  keyword_length = 2 },
        { name = "nvim_lua",                     priority = 200,  keyword_length = 2 },
        { name = "plugins",                      priority = 200,  keyword_length = 2 },
      }),
      window = {
        -- Add borders to completions popups
        completion = cmp.config.window.bordered(),
        -- completion = cmp.config.window.bordered({
        --   winhighlight = "Normal:CmpPmenu,CursorLine:CmpPmenuSel,Search:None",
        --   col_offset = -3,  -- optional: tweak horizontal position
        --   side_padding = 1, -- optional: tweak padding
        --   win_config = {
        --     relative = 'cursor',
        --     row = -1, -- negative value places menu above the cursor
        --     col = 0,
        --   },
        -- }),
        documentation = cmp.config.window.bordered(),
      },

      performance = {
        fetching_timeout = 10000,
      },

      -- local lspkind = require("lspkind")
      formatting = {
        format = require("lspkind").cmp_format({
          with_text = true,
          maxwidth = 50,
          mode = "symbol_text",
          menu = {
            copilot = "[ copilot]",
            minuet = "[ minuet]",
            codecompanion = "[ codecompanion]",
            codeium = "[ codeium]",
            nvim_lsp = "[ lsp]",
            nvim_lsp_document_symbol = "[ lsp]",
            nvim_lsp_signature_help = "[ lsp]",
            luasnip = "[ luasnip]",
            buffer = "[ buffer]",
            emoji = "[ emoji]",
            nerdfont = "[ nerdfont]",
            path = "[ path]",
            calc = "[ calc]",
            crates = "[󱘗 crates]",
            conventionalcommits = "[󰊢 cc]",
            treesitter = "[ treesitter]",
            dictionary = "[ dict]",
            spell = "[󰓆 spell]",
            tmux = "[󰓩 tmux]",
            git = "[󰓩 git]",
            npm = "[󰓩 npm]",
            cmdline = "[󰓩 cmdline]",
            nvim_lua = "[󰓩 nvim_lua]",
            plugins = "[󰓩 plugins]",
          },
        }),
      },

      sorting = {
        priority_weight = 2,
        comparators = {
          require("copilot_cmp.comparators").prioritize,
          -- Below is the default comparitor list and order for nvim-cmp
          cmp.config.compare.offset,
          -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
          cmp.config.compare.exact,
          cmp.config.compare.score,
          require("cmp-under-comparator").under,
          cmp.config.compare.kind,
          cmp.config.compare.sort_text,
          cmp.config.compare.length,
          cmp.config.compare.order,
        },
      }
    })
  end,
}
