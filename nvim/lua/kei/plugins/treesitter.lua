return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" }, -- ensure it loads at right time
    config = function()
      local ok, ts = pcall(require, "nvim-treesitter.configs")
      if not ok then return end

      ts.setup({
        ensure_installed = {
          "yaml",
          "json",
          "hcl",
          "cpp",
          "go",
          "python",
          "julia",
          "zig",
          "vim",
          "gitcommit",
        },
        highlight = { enable = true },
        indent = { enable = true },
        sync_install = false,
        auto_install = false,
      })
    end,
  },
}
