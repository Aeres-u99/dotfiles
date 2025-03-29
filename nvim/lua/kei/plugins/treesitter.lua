return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "yaml",
          "json",
          "hcl",   -- Terraform
          "cpp",
          "go",
          "python",
          "julia", -- Lisp-like syntax
          "zig",
          "vim",
          "tsv",
          "v",
          "gitcommit"
        },
        highlight = { enable = true },
        indent = { enable = true },
        sync_install = false,
        auto_install = false,
      })
    end,
  },
}

