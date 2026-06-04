return {
  {
    'neovim/nvim-lspconfig',
    lazy = false,
    dependencies = {
      'saghen/blink.cmp',
      'b0o/schemastore.nvim',
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      local servers = {
        'ansiblels',
        'bashls',
        'fish_lsp',
        'jsonls',
        'lua_ls',
        'pyright',
        'ruff',
        'terraformls',
        'ts_ls',
        'yamlls',
      }

      vim.lsp.config('ansiblels', {
        capabilities = capabilities,
        settings = {
          ansible = {
            ansible = {
              path = 'ansible',
              collectionsPath = 'ansible_collections',
              enable = true,
            },
            python = {
              interpreterPath = 'python3',
            },
            lint = {
              enabled = true,
              path = 'ansible-lint',
              showRule = true,
            },
          },
        },
      })

      vim.lsp.config('bashls', {
        capabilities = capabilities,
        filetypes = { 'sh', 'zsh' },
        settings = {
          bashIde = {
            globPattern = '*@(.sh|.inc|.bash|.command|.zsh)',
          },
        },
      })

      vim.lsp.config('fish_lsp', {
        capabilities = capabilities,
        filetypes = { 'fish' },
      })

      vim.lsp.config('jsonls', {
        capabilities = capabilities,
        settings = {
          json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true },
          },
        },
      })

      vim.lsp.config('lua_ls', {
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT' },
            diagnostics = { globals = { 'vim' } },
            workspace = { checkThirdParty = false },
          },
        },
      })

      vim.lsp.config('pyright', {
        capabilities = capabilities,
        settings = {},
      })

      vim.lsp.config('ruff', {
        capabilities = capabilities,
        settings = {},
      })

      vim.lsp.config('ts_ls', {
        capabilities = capabilities,
        filetypes = {
          'javascript',
          'javascriptreact',
          'typescript',
          'typescriptreact',
        },
        root_markers = { 'package.json', '.git', '.jj' },
      })

      vim.lsp.config('yamlls', {
        capabilities = capabilities,
        settings = {
          yaml = {
            customTags = {
              '!Ref',
              '!ImportValue',
              '!reference',
              '!reference sequence',
            },
            format = { enable = false },
            schemaStore = { enable = false, url = '' },
            schemas = require('schemastore').yaml.schemas(),
            keyOrdering = false,
          },
        },
      })

      vim.lsp.config('terraformls', {
        capabilities = capabilities,
        init_options = {
          terraform = {
            path = vim.fs.normalize(vim.env.HOME .. '/.scripts/wtf'),
          },
        },
        settings = {
          terraform = {
            formatting = { provider = 'terraform_fmt' },
          },
        },
      })

      -- for _, server in ipairs(servers) do
      --   vim.lsp.config(server, {
      --     capabilities = capabilities,
      --   })
      -- end

      vim.lsp.enable(servers)
    end,
  },
}
