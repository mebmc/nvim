return {
    "coffebar/neovim-project",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
        { "Shatur/neovim-session-manager" },
    },
    opts = {
        projects = { -- define project roots
            "~/git/*",
            "~/work/*",
            "~/.config/*",
        },
    },
    init = function()
        -- enable saving the state of plugins in the session
        vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    lazy = false,
    priority = 100,
}
