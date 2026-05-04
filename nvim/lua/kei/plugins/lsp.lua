return {
  {
    'neovim/nvim-lspconfig',
    lazy = false,
    config = function()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.clangd.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.terraformls.setup({})
      lspconfig.bashls.setup({})
    end,
  },
}
