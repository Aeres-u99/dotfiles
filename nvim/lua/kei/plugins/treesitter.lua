return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      local ok, configs = pcall(require, 'nvim-treesitter.configs')
      if not ok then
        return
      end

      configs.setup({
        ensure_installed = {
          'python',
          'lua',
          'go',
          'c',
          'cpp',
          'bash',
          'yaml',
          'terraform',
          'json',
          'vim',
          'vimdoc',
          'query',
        },

        highlight = {
          enable = true,
        },

        indent = {
          enable = true,
        },

        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            scope_incremental = '<S-CR>',
            node_decremental = '<BS>',
          },
        },
      })
    end,
  },
}