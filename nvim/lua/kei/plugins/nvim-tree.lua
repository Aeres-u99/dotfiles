return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional: for file icons
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 40, -- Set width to 40 as per your preference
                side = "left",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
            git = {
                enable = true,
                ignore = false,
            },
            diagnostics = {
                enable = true,
            },
            update_focused_file = {
                enable = true,
            },
        })

        -- Global settings
        vim.g.nvim_tree_gitignore = 1
        vim.g.nvim_tree_auto_open = 1
        vim.g.nvim_tree_auto_close = 1
        vim.g.nvim_tree_quit_on_open = 1
        vim.g.nvim_tree_follow = 1
        vim.g.nvim_tree_indent_markers = 1
        vim.g.nvim_tree_hide_dotfiles = 1
        vim.g.nvim_tree_git_hl = 1
        vim.g.nvim_tree_highlight_opened_files = 1
        vim.g.nvim_tree_root_folder_modifier = ':~'
        vim.g.nvim_tree_tab_open = 1
        vim.g.nvim_tree_auto_resize = 0
        vim.g.nvim_tree_disable_netrw = 0
        vim.g.nvim_tree_hijack_netrw = 0
        vim.g.nvim_tree_add_trailing = 1
        vim.g.nvim_tree_group_empty = 1
        vim.g.nvim_tree_lsp_diagnostics = 1
        vim.g.nvim_tree_disable_window_picker = 1
        vim.g.nvim_tree_hijack_cursor = 0
        vim.g.nvim_tree_icon_padding = ' '
        vim.g.nvim_tree_update_cwd = 1
    end,
}

