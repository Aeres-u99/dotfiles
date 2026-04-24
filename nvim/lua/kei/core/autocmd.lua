vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.dart" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

