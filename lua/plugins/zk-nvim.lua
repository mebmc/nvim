return {
  "zk-org/zk-nvim",
  keys = {
    { "<leader>nf", desc = "find notes", mode = "n", "<cmd>ZkNotes { excludeHrefs = { 'daily/', 'weekly/', 'monthly/' } } <CR>" },
    { "<leader>nF", desc = "find all notes", mode = "n", "<cmd>ZkNotes<CR>" },
    { "<leader>nn", desc = "new note", mode = "n", "<cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>" },
    { "<leader>nb", desc = "note backlinks", mode = "n", "<cmd>ZkBacklinks<CR>" },
    { "<leader>nl", desc = "note links", mode = "n", "<cmd>ZkLinks<CR>" },
    { "<leader>ni", desc = "insert link", mode = "n", "<cmd>ZkInsertLink<CR>" },
    { "<leader>nt", desc = "note tags", mode = "n", "<cmd>ZkTags<CR>" },
    { "<leader>nd", desc = "open daily", mode = "n", function() require("zk.commands").get("ZkNew")({ dir = "daily" }) end },
    { "<leader>nD", desc = "find daily", mode = "n", "<cmd>ZkNotes { tags = { 'daily' } }<CR>" },
    { "<leader>nw", desc = "open weekly", mode = "n", function() require("zk.commands").get("ZkNew")({ dir = "weekly" }) end },
    { "<leader>nW", desc = "find weekly", mode = "n", "<cmd>ZkNotes { tags = { 'weekly' } }<CR>" },
    { "<leader>nm", desc = "open monthly", mode = "n", function() require("zk.commands").get("ZkNew")({ dir = "monthly" }) end },
    { "<leader>nM", desc = "find monthly", mode = "n", "<cmd>ZkNotes { tags = { 'monthly' } }<CR>" },
  },
  config = function()
    require("zk").setup({
      picker = "telescope",
    })
  end
}
