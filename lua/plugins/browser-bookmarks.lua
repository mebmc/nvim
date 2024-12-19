return {
    "dhruvmanila/browser-bookmarks.nvim",
    dependencies = {
        -- "kkharji/sqlite.lua", -- Only if your selected browser is Firefox, Waterfox or buku
        "nvim-telescope/telescope.nvim"
    },
    cmd = {
        "BrowserBookmarks"
    },
    keys = {
        { "<leader>fB", "<cmd>Telescope bookmarks<cr>", desc = "bookmarks" },
    },
    opts = {
        selected_browser = 'brave'
    },
    config = function()
        require('telescope').load_extension('bookmarks')
    end
}
