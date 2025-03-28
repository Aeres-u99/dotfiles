-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require('plugins')
require('options')
require('keybindings')
require('treesitter-config')
require('lualine-config')
require('bufferline-config')
require('nvimtree-config')
require('telescope-config')
require('whichkey-config')
require('rainbow-delimiters-config')
require('ayu-night')
require('cmp-config')
require('mason-config')
require('lsp-config')
require('ayu').colorscheme()

