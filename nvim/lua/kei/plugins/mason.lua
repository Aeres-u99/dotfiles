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
    -- simple servers
    local servers = {
      "yamlls",
      "terraformls",
      "tflint",
      "clangd",
      "gopls",
      "julials",
    }

    for _, server in ipairs(servers) do
      vim.lsp.config(server, {})
      vim.lsp.enable(server)
    end

    -- special case: helm_ls
    vim.lsp.config("helm_ls", {
      cmd = { "helm_ls", "serve" },
      filetypes = { "helm" },
    })
    vim.lsp.enable("helm_ls")
  end,
},
}

