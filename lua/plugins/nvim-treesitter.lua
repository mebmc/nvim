return {
    'nvim-treesitter/nvim-treesitter',
    event = 'VeryLazy',
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
    opts = {
        highlight = {
            enable = true,
        },
        indent = { enable = true },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<c-space>',
                node_incremental = '<c-space>',
                scope_incremental = '<c-s>',
                node_decremental = '<M-space>',
            },
        },
        textobjects = {
            select = {
                enable = true,
                lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
                keymaps = {
                    -- You can use the capture groups defined in textobjects.scm
                    ['aa'] = '@parameter.outer',
                    ['ia'] = '@parameter.inner',
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@class.outer',
                    ['ic'] = '@class.inner',
                },
            },
            move = {
                enable = true,
                set_jumps = true, -- whether to set jumps in the jumplist
                goto_next_start = {
                    [']m'] = '@function.outer',
                    [']]'] = '@class.outer',
                },
                goto_next_end = {
                    [']M'] = '@function.outer',
                    [']['] = '@class.outer',
                },
                goto_previous_start = {
                    ['[m'] = '@function.outer',
                    ['[['] = '@class.outer',
                },
                goto_previous_end = {
                    ['[M'] = '@function.outer',
                    ['[]'] = '@class.outer',
                },
            },
            swap = {
                enable = true,
                swap_next = {
                    ['<leader>a'] = '@parameter.inner',
                },
                swap_previous = {
                    ['<leader>A'] = '@parameter.inner',
                },
            },
        },
        auto_install = true, -- automatically install syntax support when entering new file type buffer
        sync_install = true,
        ensure_installed = {
            'awk',
            'bash',
            'c',
            'cmake',
            'comment',
            'cpp',
            'css',
            'devicetree',
            'diff',
            'disassembly',
            'dockerfile',
            'git_config',
            'git_rebase',
            'gitattributes',
            'gitignore',
            'go',
            'gomod',
            'gosum',
            'gpg',
            'graphql',
            'hcl',
            'html',
            'http',
            'javascript',
            'jq',
            'jsdoc',
            'json',
            'json5',
            'jsonc',
            'jsonnet',
            'kdl',
            'llvm',
            'lua',
            'luadoc',
            'make',
            'markdown',
            'markdown_inline',
            'mermaid',
            'nix',
            'norg',
            'objdump',
            'passwd',
            'php',
            'phpdoc',
            'promql',
            'python',
            'query',
            're2c',
            'regex',
            'requirements',
            'rst',
            'rust',
            'scheme',
            'scss',
            'solidity',
            'sql',
            'ssh_config',
            'strace',
            'strace',
            'templ',
            'todotxt',
            'toml',
            'tsx',
            'typescript',
            'udev',
            'vim',
            'vimdoc',
            'xml',
            'zig',
        },
    },
    config = function(_, opts)
        local configs = require("nvim-treesitter.configs")
        configs.setup(opts)
    end
}
