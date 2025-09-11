return {
  "zk-org/zk-nvim",
  keys = {
    { "<leader>nf", desc = "find notes",    mode = "n", silent = true, "<cmd>ZkNotes { excludeHrefs = { 'daily/', 'weekly/', 'monthly/' } } <CR>" },
    { "<leader>nF", desc = "find all notes", mode = "n", silent = true, "<cmd>ZkNotes<CR>" },
    { "<leader>nn", desc = "new note",      mode = "n", silent = true, "<cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>" },
    { "<leader>nb", desc = "note backlinks", mode = "n", silent = true, "<cmd>ZkBacklinks<CR>" },
    { "<leader>nl", desc = "note links",     mode = "n", silent = true, "<cmd>ZkLinks<CR>" },
    { "<leader>ni", desc = "insert link",    mode = "n", silent = true, "<cmd>ZkInsertLink<CR>" },
    { "<leader>nt", desc = "note tags",      mode = "n", silent = true, "<cmd>ZkTags<CR>" },
    { "<leader>nd", desc = "open daily",     mode = "n", silent = true, function() require("zk.commands").get("ZkNew")({ dir = "daily" }) end },
    { "<leader>nD", desc = "find daily",     mode = "n", silent = true, "<cmd>ZkNotes { tags = { 'daily' } }<CR>" },
    { "<leader>nw", desc = "open weekly",    mode = "n", silent = true, function() require("zk.commands").get("ZkNew")({ dir = "weekly" }) end },
    { "<leader>nW", desc = "find weekly",    mode = "n", silent = true, "<cmd>ZkNotes { tags = { 'weekly' } }<CR>" },
    { "<leader>nm", desc = "open monthly",   mode = "n", silent = true, function() require("zk.commands").get("ZkNew")({ dir = "monthly" }) end },
    { "<leader>nM", desc = "find monthly",   mode = "n", silent = true, "<cmd>ZkNotes { tags = { 'monthly' } }<CR>" },
  },
  config = function()
    require("zk").setup({
      picker = "telescope",
    })
  end
}
