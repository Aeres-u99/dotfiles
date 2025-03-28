-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.g.nvim_tree_side = 'right'  -- left by default
vim.g.nvim_tree_width = 40  -- 30 by default, can be width_in_columns or 'width_in_percent%'
vim.g.nvim_tree_gitignore = 1  -- 0 by default
vim.g.nvim_tree_auto_open = 1  -- 0 by default, opens the tree when typing `vim $DIR` or `vim`
vim.g.nvim_tree_auto_close = 1  -- 0 by default, closes the tree when it's the last window
vim.g.nvim_tree_quit_on_open = 1  -- 0 by default, closes the tree when you open a file
vim.g.nvim_tree_follow = 1  -- 0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_indent_markers = 1  -- 0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_hide_dotfiles = 1  -- 0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_git_hl = 1  -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_highlight_opened_files = 1  -- 0 by default, will enable folder and file icon highlight for opened files/directories.
vim.g.nvim_tree_root_folder_modifier = ':~'  -- This is the default. See :help filename-modifiers for more options
vim.g.nvim_tree_tab_open = 1  -- 0 by default, will open the tree when entering a new tab and the tree was previously open
vim.g.nvim_tree_auto_resize = 0  -- 1 by default, will resize the tree to its saved width when opening a file
vim.g.nvim_tree_disable_netrw = 0  -- 1 by default, disables netrw
vim.g.nvim_tree_hijack_netrw = 0  -- 1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
vim.g.nvim_tree_add_trailing = 1  -- 0 by default, append a trailing slash to folder names
vim.g.nvim_tree_group_empty = 1  --  0 by default, compact folders that only contain a single folder into one node in the file tree
vim.g.nvim_tree_lsp_diagnostics = 1  -- 0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
vim.g.nvim_tree_disable_window_picker = 1  -- 0 by default, will disable the window picker.
vim.g.nvim_tree_hijack_cursor = 0  -- 1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
vim.g.nvim_tree_icon_padding = ' '  -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
vim.g.nvim_tree_update_cwd = 1  -- 0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
 --  NvimTreeOpen and NvimTreeClose are also available if you need them

