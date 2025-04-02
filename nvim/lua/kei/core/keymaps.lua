vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

-- Mapping for nvim tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = false})
map('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true, silent = false})

-- Persist the indent mode for the code
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

-- Toggling folds using Ctrl+Space
vim.keymap.set('n', '<C-Space>', function()
    return vim.fn.foldclosed('.') == -1 and 'zc' or 'zo'
end, { expr = true, noremap = true, silent = true })
-- Insert a heavy check mark
vim.api.nvim_set_keymap('i', '<C-k>', '<C-r>=nr2char(0x2714)<CR>', { noremap = true, silent = true })

