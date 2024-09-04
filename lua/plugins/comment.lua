return {
    "numToStr/Comment.nvim",
    event = {
        "BufReadPre",
        "BufNewFile"
    },
    opts = {
        toggler = {
            line = "gcc",
            block = "gCc",
        },
        opleader = {
            line = "gc",
            block = "gC",
        },
        mappings = {
            basic = true,
            extra = true,
        },
    },
}
