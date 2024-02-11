-- Auto-completion / Snippets
return {
  -- https://github.com/hrsh7th/nvim-cmp
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    -- Snippet engine & associated nvim-cmp source
    -- https://github.com/L3MON4D3/LuaSnip
    'L3MON4D3/LuaSnip',
    -- https://github.com/saadparwaiz1/cmp_luasnip
    'saadparwaiz1/cmp_luasnip',

    -- LSP completion capabilities
    -- https://github.com/hrsh7th/cmp-nvim-lsp
    'hrsh7th/cmp-nvim-lsp',

    -- Additional user-friendly snippets
    -- https://github.com/rafamadriz/friendly-snippets
    'rafamadriz/friendly-snippets',
    -- https://github.com/hrsh7th/cmp-buffer
    'hrsh7th/cmp-buffer',
    -- https://github.com/hrsh7th/cmp-path
    'hrsh7th/cmp-path',
    -- https://github.com/hrsh7th/cmp-cmdline
    'hrsh7th/cmp-cmdline',

    -- https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol
    "hrsh7th/cmp-nvim-lsp-document-symbol",
    -- https://github.com/hrsh7th/cmp-nvim-lsp-signature-help
    "hrsh7th/cmp-nvim-lsp-signature-help",
    -- https://github.com/hrsh7th/cmp-emoji
    "hrsh7th/cmp-emoji",
    -- https://github.com/hrsh7th/cmp-calc
    "hrsh7th/cmp-calc",
    -- https://github.com/hrsh7th/cmp-nvim-lua
    "hrsh7th/cmp-nvim-lua",
    -- https://github.com/onsails/lspkind
    "onsails/lspkind.nvim",
    -- https://github.com/lukas-reineke/cmp-under-comparator
    "lukas-reineke/cmp-under-comparator",
    -- https://github.com/davidsierradz/cmp-conventionalcommits
    "davidsierradz/cmp-conventionalcommits",
    -- https://github.com/chrisgrieser/cmp-nerdfont
    "chrisgrieser/cmp-nerdfont",
    -- https://github.com/Saecki/crates
    "Saecki/crates.nvim",
    -- https://github.com/ray-x/cmp-treesitter
    "ray-x/cmp-treesitter",
    -- https://github.com/uga-rosa/cmp-dictionary
    "uga-rosa/cmp-dictionary",
    -- https://github.com/andersevenrud/cmp-tmux
    "andersevenrud/cmp-tmux",
    -- https://github.com/petertriho/cmp-git
    "petertriho/cmp-git",
    -- https://github.com/David-Kunz/cmp-npm
    "David-Kunz/cmp-npm",
    -- https://github.com/KadoBOT/cmp-plugins
    "KadoBOT/cmp-plugins",
    -- -- https://github.com/zbirenbaum/copilot-cmp
    -- "zbirenbaum/copilot-cmp",
    -- -- https://github.com/jcdickinson/codeium
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
        { name = "nvim_lsp",                 priority = 1500, keyword_length = 1 },
        { name = "nvim_lsp_document_symbol", priority = 1500, keyword_length = 1 },
        { name = "nvim_lsp_signature_help",  priority = 1500, keyword_length = 1 },
        -- { name = "copilot",             priority = 1000, keyword_length = 1 },
        -- { name = "codeium",             priority = 1000, keyword_length = 1 },
        { name = "luasnip",                  priority = 750,  keyword_length = 3 },
        { name = "buffer",                   priority = 500,  keyword_length = 3 },
        { name = "nerdfont",                 priority = 300,  keyword_length = 2 },
        { name = "path",                     priority = 250,  keyword_length = 2 },
        { name = "calc",                     priority = 250,  keyword_length = 2 },
        { name = "crates",                   priority = 200,  keyword_length = 1 },
        { name = "conventionalcommits",      priority = 200,  keyword_length = 2 },
        { name = "treesitter",               priority = 200,  keyword_length = 2 },
        { name = "emoji",                    priority = 100,  keyword_length = 2 },
        { name = "dictionary",               priority = 100,  keyword_length = 2 },
        { name = "spell",                    priority = 100,  keyword_length = 3 },
        { name = "tmux",                     priority = 100,  keyword_length = 3, option = { label = '[tmux]' } },
        { name = "git",                      priority = 200,  keyword_length = 2 },
        { name = "npm",                      priority = 200,  keyword_length = 2 },
        { name = "nvim_lua",                 priority = 200,  keyword_length = 2 },
        { name = "plugins",                  priority = 200,  keyword_length = 2 },
      }),
      window = {
        -- Add borders to completions popups
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },


      -- local lspkind = require("lspkind")
      formatting = {
        format = require("lspkind").cmp_format({
          with_text = true,
          maxwidth = 50,
          mode = "symbol_text",
          menu = {
            copilot = "[ copilot]",
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
          -- Below is the default comparitor list and order for nvim-cmp
          cmp.config.compare.offset,
          -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
          cmp.config.compare.exact,
          -- require("copilot_cmp.comparators").prioritize,
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
