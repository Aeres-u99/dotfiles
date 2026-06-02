return {
  -- Treesitter (syntax + parsing)
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { 'lua', 'terraform', 'hcl' },

        highlight = {
          enable = true,
        },

        indent = {
          enable = true,
        },
      })
    end,
  },

  -- Autopairs (auto closing brackets)
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      local autopairs = require('nvim-autopairs')

      autopairs.setup({
        check_ts = true, -- treesitter-aware pairing
        disable_filetype = { 'TelescopePrompt', 'vim' },
      })
    end,
  },

  -- Rainbow brackets (modern)
  {
    'HiPhish/rainbow-delimiters.nvim',
    config = function()
      local rainbow_delimiters = require('rainbow-delimiters')

      vim.g.rainbow_delimiters = {
        strategy = {
          [''] = rainbow_delimiters.strategy.global,
        },
        query = {
          [''] = 'rainbow-delimiters',
        },
        highlight = {
          'RainbowDelimiterRed',
          'RainbowDelimiterYellow',
          'RainbowDelimiterBlue',
          'RainbowDelimiterOrange',
          'RainbowDelimiterGreen',
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan',
        },
      }
    end,
  },
}
