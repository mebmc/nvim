return {
    "Issafalcon/lsp-overloads.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "ray-x/lsp_signature.nvim",
    },
    event = {
        "VeryLazy",
        -- "BufReadPre",
        -- "BufNewFile"
    },
}
