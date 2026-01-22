-- lua/jj_jump.lua
local M = {}

local jj_hls = {
  JjSignsAdd = true,
  JjSignsChange = true,
  JjSignsDelete = true,
  JjSignsTopdelete = true,
  JjSignsChangedelete = true,

  JjSignsAddNr = true,
  JjSignsChangeNr = true,
  JjSignsDeleteNr = true,
  JjSignsTopdeletNr = true,
  JjSignsChangedeletefNr = true,

  JjSignsAddLn = true,
  JjSignsChangeLn = true,
  JjSignsDeleteLn = true,
  JjSignsTopdeleteLn = true,
  JjSignsChangedeleteLn = true,
}

local function has_jj_hl(v)
  if type(v) == "string" then
    return jj_hls[v] == true
  end

  if type(v) == "table" then
    for _, item in pairs(v) do
      if has_jj_hl(item) then
        return true
      end
    end
  end

  return false
end

local function changed_lines(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()

  local ns = vim.api.nvim_get_namespaces().jjsigns
  if not ns then
    return {}
  end

  local ok, marks = pcall(
    vim.api.nvim_buf_get_extmarks,
    bufnr,
    ns,
    0,
    -1,
    { details = true, type = "sign" }
  )

  if not ok then
    marks = vim.api.nvim_buf_get_extmarks(bufnr, ns, 0, -1, { details = true })
  end

  local lines = {}

  for _, mark in ipairs(marks) do
    local row = mark[2]
    local details = mark[4] or {}

    if details.sign_text
        or has_jj_hl(details.hl_group)
        or has_jj_hl(details.line_hl_group)
        or has_jj_hl(details.number_hl_group)
        or has_jj_hl(details.sign_hl_group)
        or has_jj_hl(details.sign_text_hl_group)
    then
      lines[row + 1] = true
    end
  end

  local out = vim.tbl_keys(lines)
  table.sort(out)

  return out
end

function M.jump(direction)
  direction = direction or 1

  local lines = changed_lines()
  if #lines == 0 then
    vim.notify("No jj changed lines", vim.log.levels.INFO)
    return
  end

  local current = vim.api.nvim_win_get_cursor(0)[1]

  if direction > 0 then
    for _, lnum in ipairs(lines) do
      if lnum > current then
        vim.api.nvim_win_set_cursor(0, { lnum, 0 })
        return
      end
    end

    vim.api.nvim_win_set_cursor(0, { lines[1], 0 })
    return
  end

  for i = #lines, 1, -1 do
    if lines[i] < current then
      vim.api.nvim_win_set_cursor(0, { lines[i], 0 })
      return
    end
  end

  vim.api.nvim_win_set_cursor(0, { lines[#lines], 0 })
end

function M.first()
  local lines = changed_lines()

  if #lines == 0 then
    vim.notify("No jj changed lines", vim.log.levels.INFO)
    return
  end

  vim.api.nvim_win_set_cursor(0, { lines[1], 0 })
end

function M.last()
  local lines = changed_lines()

  if #lines == 0 then
    vim.notify("No jj changed lines", vim.log.levels.INFO)
    return
  end

  vim.api.nvim_win_set_cursor(0, { lines[#lines], 0 })
end

return M
