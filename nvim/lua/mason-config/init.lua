require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'gopls' }, -- Install gopls automatically
  automatic_installation = true,
})
