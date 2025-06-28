return {
  'vimwiki/vimwiki',
  init = function()
    vim.g.vimwiki_list = {
      {
        path = '~/wiki',
        syntax = 'markdown',
        ext = '.md',
      },
      {
        path = '~/personal-wiki',
        syntax = 'markdown',
        ext = '.md',
      },
      {
        path = '~/Projects/ReverseEngineering/notes',
        syntax = 'markdown',
        ext = '.md',
      },
    }

    vim.g.vimwiki_global_ext = 0 -- only treat configured dirs as wiki

    -- Define custom key mappings
    vim.keymap.set('n', '<leader>ww', '<cmd>VimwikiIndex<CR>', { desc = 'Default Wiki' })
    vim.keymap.set('n', '<leader>wp', function()
      vim.cmd('VimwikiIndex 2')
    end, { desc = 'Personal Wiki' })
    vim.keymap.set('n', '<leader>wr', function()
      vim.cmd('VimwikiIndex 3')
    end, { desc = 'Reverse Wiki' })
  end
}
