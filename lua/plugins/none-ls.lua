return {
    'nvimtools/none-ls.nvim',
    config = function(_, opts)
        local none_ls = require('null-ls')
        none_ls.setup(opts)

        none_ls.builtins.diagnostics.yamllint.with({
            filetypes = { 'yaml', 'yml', 'yaml.ansible' },
        })
    end
}
