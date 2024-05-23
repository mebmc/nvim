return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',    -- fancy icons
    'linrongbin16/lsp-progress.nvim', -- LSP loading progress
    'AndreM222/copilot-lualine',
    'letieu/harpoon-lualine'
  },
  opts = {
    options = {
      -- For more themes, see https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
      theme = "codedark", -- "auto, tokyonight, catppuccin, codedark, nord"
    },
    sections = {
      lualine_c = {
        {
          -- Customize the filename part of lualine to be parent/filename
          'filename',
          file_status = true,     -- Displays file status (readonly status, modified status)
          newfile_status = false, -- Display new file status (new file means no write after created)
          path = 4,               -- 0: Just the filename
          -- 1: Relative path
          -- 2: Absolute path
          -- 3: Absolute path, with tilde as the home directory
          -- 4: Filename and parent dir, with tilde as the home directory
          symbols = {
            modified = '[+]', -- Text to show when the file is modified.
            readonly = '[-]', -- Text to show when the file is non-modifiable or readonly.
          },
        }
      },
      lualine_x = {
        {
          'harpoon2',
          separator = " ",
        },
        {
          'copilot',
          -- Default values
          symbols = {
            status = {
              icons = {
                enabled = "󰚩 ",
                sleep = "󰚩 ", -- auto-trigger disabled
                disabled = "󰚩 ",
                warning = "󰚩 ",
                unknown = " "
              },
              hl = {
                enabled = "#50FA7B",
                sleep = "#AEB7D0",
                disabled = "#6272A4",
                warning = "#FFB86C",
                unknown = "#FF5555"
              }
            },
            -- spinners = require("copilot-lualine.spinners").dots,
            spinner_color = "#6272A4"
          },
          show_colors = false,
          show_loading = true
        },
        'encoding',
        'fileformat',
        'filetype',
      }
    }
  }
}
