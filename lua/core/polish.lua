local function yaml_ft(path, bufnr)
  -- check if file is in roles, tasks, or handlers folder
  local path_regex = vim.regex "(tasks\\|roles\\|handlers\\|plays\\|play\\.d)/"
  if path_regex and path_regex:match_str(path) then
    return "yaml.ansible"
  end

  -- return yaml if nothing else
  return "yaml"
end

vim.filetype.add {
  extension = {
    tf = "terraform",
    yml = yaml_ft,
    yaml = yaml_ft,
    kdl = "kdl"
  }
}

vim.api.nvim_create_user_command("FormatDisable", function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.autoformat = false
  else
    vim.g.autoformat = false
  end
end, {
  desc = "Disable autoformat-on-save",
  bang = true,
})
vim.api.nvim_create_user_command("FormatEnable", function()
  vim.b.autoformat = true
  vim.g.autoformat = true
end, {
  desc = "Re-enable autoformat-on-save",
})

-- Set the color for LSP Inlay Hints (Ghost Text)
vim.api.nvim_set_hl(0, 'LspInlayHint', { fg = '#fC6370', bg = 'NONE' })
-- vim.api.nvim_set_hl(0, 'CopilotGhostText', { fg = '#fC6370', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CopilotGhostText', { fg = '#4B8A5A', italic = true })

-- Neovide settings
vim.g.neovide_transparency = 0.9
