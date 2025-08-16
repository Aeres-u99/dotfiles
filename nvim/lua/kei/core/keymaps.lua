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
vim.keymap.set('n', '<C-c>', '"+yy', { noremap = true, silent = true, desc = 'Copy line to clipboard' })
-- Map Ctrl+C in visual mode to yank to system clipboard
vim.keymap.set('v', '<C-c>', '"+y', { noremap = true, silent = true, desc = 'Copy to clipboard (visual)' })

vim.keymap.set('n', '<leader>ve', function()
  local ve = vim.opt.virtualedit:get()
  if vim.tbl_contains(ve, 'all') then
    vim.opt.virtualedit = ''
    print('virtualedit OFF')
  else
    vim.opt.virtualedit = 'all'
    print('virtualedit ON')
  end
end, { desc = 'Toggle virtualedit' })

-- Reload your config
vim.keymap.set('n', '<leader>rr', function()
  for name,_ in pairs(package.loaded) do
    if name:match('^user') then
      package.loaded[name] = nil
    end
  end
  dofile(vim.env.MYVIMRC)
  print('🔁 Config reloaded!')
end, { desc = 'Reload nvim config' })

vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })]]

