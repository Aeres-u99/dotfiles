return {
  {
    "Shatur/neovim-ayu",
    lazy = false, -- Load on startup
    priority = 1000, -- Ensure it loads before other UI elements
    config = function()
      require('ayu').setup({
        overrides = {
          Normal = { bg = "None" },
          NormalFloat = { bg = "none" },
          ColorColumn = { bg = "None" },
          SignColumn = { bg = "None" },
          Folded = { bg = "None" },
          FoldColumn = { bg = "None" },
          VertSplit = { bg = "None" },
        },
      })
      vim.cmd("colorscheme ayu") -- Set colorscheme
    end
  },
    -- Catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false, -- Load immediately
        priority = 1000, -- Ensure it loads before everything else
    },
    -- Gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
    },
    -- Tokyonight
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
    }
}

