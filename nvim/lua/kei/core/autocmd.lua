vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.cmd("Neominimap off")
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.cmd("Neominimap on")
  end,
})

-- Autoformat on save for Dart/Flutter
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.dart" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

