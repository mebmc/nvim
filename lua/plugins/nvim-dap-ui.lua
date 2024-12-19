return {
  'rcarriga/nvim-dap-ui',
  event = 'VeryLazy',
  dependencies = {
    'mfussenegger/nvim-dap',
    'theHamsta/nvim-dap-virtual-text',   -- inline variable text while debugging
    'nvim-telescope/telescope-dap.nvim', -- telescope integration with dap
    'nvim-neotest/nvim-nio',
  },
  keys = {
    { "<leader>db", desc = "toggle breakpoint",    mode = "n", "<cmd>lua require'dap'.toggle_breakpoint()<cr>" },
    { "<leader>dC", desc = "breakpoint condition", mode = "n", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('breakpoint condition: '))<cr>" },
    { "<leader>dL", desc = "breakpoint log",       mode = "n", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>" },
    { "<leader>dR", desc = "clear breakpoints",    mode = "n", "<cmd>lua require'dap'.clear_breakpoints()<cr>" },
    { "<leader>da", desc = "list breakpoints",     mode = "n", "<cmd>Telescope dap list_breakpoints<cr>" },
    { "<leader>dc", desc = "continue",             mode = "n", "<cmd>lua require'dap'.continue()<cr>" },
    { "<leader>dj", desc = "step over",            mode = "n", "<cmd>lua require'dap'.step_over()<cr>" },
    { "<leader>dk", desc = "step into",            mode = "n", "<cmd>lua require'dap'.step_into()<cr>" },
    { "<leader>do", desc = "step out",             mode = "n", "<cmd>lua require'dap'.step_out()<cr>" },
    {
      "<leader>dd",
      desc = "disconnect",
      mode = "n",
      function()
        require("dap").disconnect(); require("dapui").close();
      end
    },
    {
      "<leader>dt",
      desc = "terminate",
      mode = "n",
      function()
        require("dap").terminate(); require("dapui").close();
      end
    },
    { "<leader>dr", desc = "toggle repl", mode = "n", "<cmd>lua require'dap'.repl.toggle()<cr>" },
    { "<leader>dl", desc = "run last",    mode = "n", "<cmd>lua require'dap'.run_last()<cr>" },
    { "<leader>di", desc = "widgets",     mode = "n", function() require "dap.ui.widgets".hover() end },
    {
      "<leader>d?",
      desc = "widgets centered float",
      mode = "n",
      function()
        local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes)
      end
    },
    { "<leader>df", desc = "frames",   mode = "n", "<cmd>Telescope dap frames<cr>" },
    { "<leader>dh", desc = "commands", mode = "n", "<cmd>Telescope dap commands<cr>" },
    {
      "<leader>de",
      desc = "diagnostics",
      mode = "n",
      function()
        require("telescope.builtin").diagnostics({
          default_text =
          ":E:"
        })
      end
    },
  },

  opts = {
    controls = {
      element = "repl",
      enabled = false,
      icons = {
        disconnect = "",
        pause = "",
        play = "",
        run_last = "",
        step_back = "",
        step_into = "",
        step_out = "",
        step_over = "",
        terminate = ""
      }
    },
    element_mappings = {},
    expand_lines = true,
    floating = {
      border = "single",
      mappings = {
        close = { "q", "<Esc>" }
      }
    },
    force_buffers = true,
    icons = {
      collapsed = "",
      current_frame = "",
      expanded = ""
    },
    layouts = {
      {
        elements = {
          {
            id = "scopes",
            size = 0.50
          },
          {
            id = "stacks",
            size = 0.30
          },
          {
            id = "watches",
            size = 0.10
          },
          {
            id = "breakpoints",
            size = 0.10
          }
        },
        size = 40,
        position = "left", -- Can be "left" or "right"
      },
      {
        elements = {
          "repl",
          "console",
        },
        size = 10,
        position = "bottom", -- Can be "bottom" or "top"
      }
    },
    mappings = {
      edit = "e",
      expand = { "<CR>", "<2-LeftMouse>" },
      open = "o",
      remove = "d",
      repl = "r",
      toggle = "t"
    },
    render = {
      indent = 1,
      max_value_lines = 100
    }
  },
  config = function(_, opts)
    local dap = require('dap')
    require('dapui').setup(opts)

    dap.listeners.after.event_initialized["dapui_config"] = function()
      require('dapui').open()
    end

    dap.listeners.before.event_terminated["dapui_config"] = function()
      -- Commented to prevent DAP UI from closing when unit tests finish
      -- require('dapui').close()
    end

    dap.listeners.before.event_exited["dapui_config"] = function()
      -- Commented to prevent DAP UI from closing when unit tests finish
      -- require('dapui').close()
    end

    -- Add dap configurations based on your language/adapter settings
    -- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
    -- dap.configurations.xxxxxxxxxx = {
    --   {
    --   },
    -- }
    dap.configurations.php = {
      {
        type = 'php',
        request = 'launch',
        name = 'Listen for Xdebug',
        port = 9003,
      },
    }
  end
}
