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


vim.g.neovide_transparency = 0.9
