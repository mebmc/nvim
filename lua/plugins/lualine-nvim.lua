return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',    -- fancy icons
    'linrongbin16/lsp-progress.nvim', -- LSP loading progress
    'AndreM222/copilot-lualine',
    'letieu/harpoon-lualine'
  },
  config = function()
    local utils = require("lualine.utils.utils")
    local highlight = require("lualine.highlight")

    local diagnostics_message = require("lualine.component"):extend()

    diagnostics_message.default = {
      colors = {
        error = utils.extract_color_from_hllist(
          { "fg", "sp" },
          { "DiagnosticError", "LspDiagnosticsDefaultError", "DiffDelete" },
          "#e32636"
        ),
        warning = utils.extract_color_from_hllist(
          { "fg", "sp" },
          { "DiagnosticWarn", "LspDiagnosticsDefaultWarning", "DiffText" },
          "#ffa500"
        ),
        info = utils.extract_color_from_hllist(
          { "fg", "sp" },
          { "DiagnosticInfo", "LspDiagnosticsDefaultInformation", "DiffChange" },
          "#ffffff"
        ),
        hint = utils.extract_color_from_hllist(
          { "fg", "sp" },
          { "DiagnosticHint", "LspDiagnosticsDefaultHint", "DiffAdd" },
          "#273faf"
        ),
      },
    }
    function diagnostics_message:init(options)
      diagnostics_message.super:init(options)
      self.options.colors = vim.tbl_extend("force", diagnostics_message.default.colors, self.options.colors or {})
      self.highlights = { error = "", warn = "", info = "", hint = "" }
      self.highlights.error = highlight.create_component_highlight_group(
        { fg = self.options.colors.error },
        "diagnostics_message_error",
        self.options
      )
      self.highlights.warn = highlight.create_component_highlight_group(
        { fg = self.options.colors.warn },
        "diagnostics_message_warn",
        self.options
      )
      self.highlights.info = highlight.create_component_highlight_group(
        { fg = self.options.colors.info },
        "diagnostics_message_info",
        self.options
      )
      self.highlights.hint = highlight.create_component_highlight_group(
        { fg = self.options.colors.hint },
        "diagnostics_message_hint",
        self.options
      )
    end

    function diagnostics_message:update_status(is_focused)
      local r, _ = unpack(vim.api.nvim_win_get_cursor(0))
      local diagnostics = vim.diagnostic.get(0, { lnum = r - 1 })
      if #diagnostics > 0 then
        local diag = diagnostics[1]
        for _, d in ipairs(diagnostics) do
          if d.severity < diag.severity then
            diagnostics = d
          end
        end
        local icons = { " ", " ", " ", " " }
        local hl = { self.highlights.error, self.highlights.warn, self.highlights.info, self.highlights.hint }
        return highlight.component_format_highlight(hl[diag.severity]) .. icons[diag.severity] .. " " .. diag.message
      else
        return ""
      end
    end

    require('lualine').setup({
      options = {
        -- For more themes, see https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
        theme = "codedark", -- "auto, tokyonight, catppuccin, codedark, nord"
        -- component_separators = { left = '', right = ''},
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_b = {
          {
            'diagnostics',
          }
        },
        lualine_c = {
          -- {
          --   -- -- Customize the filename part of lualine to be parent/filename
          --   'filename',
          --   file_status = true,     -- Displays file status (readonly status, modified status)
          --   newfile_status = false, -- Display new file status (new file means no write after created)
          --   path = 4,               -- 0: Just the filename
          --   -- 1: Relative path
          --   -- 2: Absolute path
          --   -- 3: Absolute path, with tilde as the home directory
          --   -- 4: Filename and parent dir, with tilde as the home directory
          --   symbols = {
          --     modified = '[+]', -- Text to show when the file is modified.
          --     readonly = '[-]', -- Text to show when the file is non-modifiable or readonly.
          --   },
          -- },
          {
            diagnostics_message,
          }
        },
        lualine_x = {
          {
            'harpoon2',
            separator = "",
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
          -- 'encoding',
          -- 'fileformat',
          'filetype',
        },
      }
    })
  end,
}
