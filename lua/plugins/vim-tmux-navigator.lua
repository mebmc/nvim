return {
  'christoomey/vim-tmux-navigator',
  -- Only load this plugin if tmux is being used
  event = function()
    if vim.fn.exists("$TMUX") == 1 then
      return "VeryLazy"
    end
  end,
  config = function ()
    vim.g.tmux_navigator_no_mappings = 1
    vim.g.tmux_navigator_disable_when_zoomed = 1
    vim.g.tmux_navigator_save_on_switch = 1
    vim.g.tmux_navigator_no_wrap = 1
  end
}

