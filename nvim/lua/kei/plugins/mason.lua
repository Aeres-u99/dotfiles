return {
  -- Mason (LSP/DAP/Formatter Manager)
  {
    "williamboman/mason.nvim",
    lazy = false, -- Load on startup
    priority = 1000, -- Ensure it loads before other UI elements
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason LSPConfig Bridge
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "terraformls",          -- Terraform
          "tflint",               -- Terraform Linter
          "clangd",               -- C, C++
          "gopls",                -- Go
          "julials",              -- Lisp (Julia)
        },
        automatic_installation = true,
      })
    end,
  },

  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.yamlls.setup({})
      lspconfig.helm_ls.setup({ cmd = { "helm_ls", "serve" }, filetypes = { "helm" } })
      lspconfig.terraformls.setup({})
      lspconfig.tflint.setup({})
      lspconfig.clangd.setup({})
      lspconfig.gopls.setup({})
      lspconfig.julials.setup({})
    end,
  },
}

