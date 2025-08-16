return {
  {
    'akinsho/flutter-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional but recommended
    },
    config = function()
      require("flutter-tools").setup {
        flutter_path = "/opt/flutter/bin/flutter", -- adjust if Flutter isn't in your PATH
        dart_path = "/opt/flutter/bin/dart", -- adjust if Flutter isn't in your PATH
        ui = {
          border = "rounded",
          notification_style = 'native',
        },
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        debugger = {
          enabled = true,
          run_via_dap = false, -- set to true if you're using nvim-dap
        },
        lsp = {
          color = {
            enabled = true,
            background = false,
            foreground = false,
            virtual_text = true,
            virtual_text_str = "■",
          },

        }
      }
    end,
  },
}

