return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'rafamadriz/friendly-snippets',
    },
    version = '*',
    opts = {
      keymap = {
          ['<Tab>'] = { 'select_next', 'fallback' }, ['<S-Tab>'] = { 'select_prev', 'fallback' }, ['<CR>'] = { 'accept', 'fallback' }
      },

      appearance = {
        nerd_font_variant = 'mono'
      },

      completion = {
        documentation = {
          auto_show = true,
        },
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
  },
}
