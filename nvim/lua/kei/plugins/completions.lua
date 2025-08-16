return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip", -- Snippet engine
      "onsails/lspkind-nvim" -- for pretty pictograms (optional)
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          -- ⌨️ Manual autocomplete trigger
          ["<C-Space>"] = cmp.mapping.complete(),

          -- ⏎ Accept suggestion only if one is selected
          ["<CR>"] = cmp.mapping(function(fallback)
            if cmp.visible() and cmp.get_selected_entry() then
              cmp.confirm({ select = false })
            else
              fallback()
            end
          end, { "i", "s" }),

          -- ⇥ TAB = navigate if menu, trigger if valid, else insert tab
          ["<Tab>"] = cmp.mapping(function(fallback)
            local col = vim.fn.col(".") - 1
            if cmp.visible() then
              cmp.select_next_item()
            elseif col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
              fallback() -- insert real tab
            else
              cmp.complete() -- trigger suggestions
            end
          end, { "i", "s" }),

          -- ⇧-TAB = navigate backwards
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

      -- 🧠 Optional: Format on save
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.go", "*.rs", "*.lua", "*.ts", "*.py" },
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end,
  },
}
