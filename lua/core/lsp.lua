-- LSP server configurations
--  https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md


-- Ansible YAML
vim.lsp.enable('ansiblels')
vim.lsp.config('ansiblels', {
  settings = {
    ansible = {
      ansible = {
        path = "ansible",
        collectionsPath = "ansible_collections",
        enable = true,
      },
      python = {
        interpreterPath = "python3",
      },
      lint = {
        enabled = true,
        path = "ansible-lint",
        showRule = true,
      },
    },
  }
})


-- Bashls
vim.lsp.enable('bashls')
vim.lsp.config('bashls', {
  filetypes = { 'sh', 'zsh' },
  settings = {
    bashIde = {
      globPattern = '*@(.sh|.inc|.bash|.command|.zsh)',
    }
  }
})


-- Fish
vim.lsp.enable('fish_ls')
vim.lsp.config('fish_ls', {
  filetypes = { 'fish' },
})

-- JSON: enable snippets and schemas
vim.lsp.enable('jsonls')
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
vim.lsp.enable('lua_ls')
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      workspace = { checkThirdParty = false },
    },

  }
})


-- Python
vim.lsp.enable('ruff_lsp')
vim.lsp.config('ruff_lsp', {
  settings = {}
})


-- Typescript
vim.lsp.enable('ts_ls')
vim.lsp.config('ts_ls', {
  -- cmd = { 'typescript-language-server', '--stdio' },
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
  root_dir = vim.fs.root(0, { 'package.json', '.git', '.jj' }),
})


-- YAML: plain yaml files
vim.lsp.enable('yamlls')
vim.lsp.config('yamlls', {
  settings = {
    yaml = {
      customTags = { "!Ref", "!ImportValue", "!reference", "!reference sequence" },
      format = { enable = false },
      schemaStore = { enable = false, url = "" },
      schemas = (function()
        local ok, schemastore = pcall(require, 'schemastore')
        return ok and schemastore.yaml.schemas() or {}
      end)(),
      keyOrdering = false,
    },
  },
})


vim.lsp.enable('terraformls')
vim.lsp.config('terraformls', {
  init_options = {
    terraform = {
      path = vim.fs.normalize(vim.env.HOME .. "/.scripts/wtf"),
    },
  },
  settings = {
    terraform = {
      formatting = { provider = "terraform_fmt" },
    },
  },
})
