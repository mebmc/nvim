return {
    "chrisgrieser/nvim-alt-substitute",
    event = "CmdlineEnter",
    -- lazy-loading with `cmd =` does not work well with incremental preview
    opts = {
        showNotification = true,
    },
}
