return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip", -- Snippet engine
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end, { "i", "s" }),
        }),

        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        }),

        formatting = {
          format = function(entry, vim_item)
            local icons = {
              nvim_lsp = "λ",
              buffer = "Ω",
              path = "🖫",
              luasnip = "⋗",
            }
            vim_item.menu = icons[entry.source.name] or entry.source.name
            return vim_item
          end,
        },
      })

      -- 🧠 Autoformat-on-save hook for LSP
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.go", "*.rs", "*.lua", "*.ts", "*.py" }, -- tweak per your needs
        callback = function()
          vim.lsp.buf.format({ async = false }) -- block until done
        end,
      })
    end,
  },
}
