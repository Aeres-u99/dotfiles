return {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Ensure icons are available
    config = function()
      require("bufferline").setup{}

      -- Keybindings for cycling through buffers
      vim.cmd [[
        nnoremap <silent><TAB> :BufferLineCycleNext<CR>
        nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
      ]]
    end
  }
}

