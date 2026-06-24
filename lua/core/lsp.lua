-- LSP server configurations
--  https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

local servers = {
  'ansiblels',
  'bashls',
  'fish_lsp',
  'jsonls',
  'lua_ls',
  'pyright',
  'ruff_lsp',
  'ts_ls',
  'yamlls',
  'terraformls',
}

-- Ansible YAML
vim.lsp.config('ansiblels', {
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

-- Bashls
vim.lsp.config('bashls', {
  filetypes = { 'sh', 'zsh' },
  settings = {
    bashIde = {
      globPattern = '*@(.sh|.inc|.bash|.command|.zsh)',
    },
  },
})

-- Fish
vim.lsp.config('fish_lsp', {
  filetypes = { 'fish' },
})

-- JSON: enable snippets and schemas
vim.lsp.config('jsonls', {
  settings = {
    json = {
      schemas = (function()
        local ok, schemastore = pcall(require, 'schemastore')
        return ok and schemastore.json.schemas() or {}
      end)(),
      validate = { enable = true },
    },
  },
})

-- Lua
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim', 'Snacks' } },
      workspace = { checkThirdParty = false },
    },
  },
})

-- Python
vim.lsp.config('pyright', {
  settings = {},
})

vim.lsp.config('ruff', {
  settings = {},
})

-- Typescript
vim.lsp.config('ts_ls', {
  filetypes = {
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
  },
  root_dir = vim.fs.root(0, { 'package.json', '.git', '.jj' }),
})

-- YAML: plain yaml files
vim.lsp.config('yamlls', {
  settings = {
    yaml = {
      customTags = { '!Ref', '!ImportValue', '!reference', '!reference sequence' },
      format = { enable = false },
      schemaStore = { enable = false, url = '' },
      schemas = (function()
        local ok, schemastore = pcall(require, 'schemastore')
        return ok and schemastore.yaml.schemas() or {}
      end)(),
      keyOrdering = false,
    },
  },
})

-- Terraform
vim.lsp.config('terraformls', {
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

-- Enable LSP servers
vim.lsp.enable(servers)
