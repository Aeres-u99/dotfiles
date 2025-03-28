local wk = require("which-key")
local mappings = {
    { "<leader>E", "<cmd>e ~/.config/nvim/init.lua<cr>", desc = "Open nvim config", mode = "n" },
    { "<leader>x", "<cmd>bdelete<cr>" , desc = "Delete Buffer", mode = "n" },

    { "<leader>ff", "<cmd>Telescope find_files<cr>" , desc = "Search and Open Files", mode = "n" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>" , desc = "Live grep", mode = "n" },
    { "<leader>tf", "<cmd>Telescope file_browser<cr>" , desc = "File Browser", mode = "n" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>" , desc = "List buffers", mode = "n" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>" , desc = "List help tags", mode = "n" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>" , desc = "List keymaps", mode = "n" }

}
-- local opts = {prefix = '<leader>'}
-- wk.register(mappings, opts)
wk.add(mappings)
