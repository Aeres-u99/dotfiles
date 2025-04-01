return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<C-\>]],  -- Change this keybinding if needed
      shade_terminals = true,
      direction = "horizontal",  -- "float" or "vertical" are also options
      start_in_insert = true,
    })
  end
}
