-- Set options for YAML files
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"yaml", "yml"},
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end
})

-- Set foldlevelstart
vim.opt.foldlevelstart = 20

-- Enable filetype detection, plugin, and indentation
vim.cmd("filetype plugin indent on")

-- Set tab and indent options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true

-- Set search options
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Set status and command options
vim.opt.ruler = true
vim.opt.laststatus = 2
vim.opt.showcmd = true
vim.opt.showmode = true

-- Set list options (for invisible characters)
vim.opt.list = true
vim.opt.listchars = "trail:»,tab:»-"

-- Set fill characters
vim.opt.fillchars = "vert: ,eob: "

-- Set wrapping and break indent
vim.opt.wrap = true
vim.opt.breakindent = true

-- Set encoding
vim.opt.encoding = "utf-8"

-- Set line numbering
vim.opt.relativenumber = true
vim.opt.number = true

-- Set window title
vim.opt.title = true

-- Set EndOfBuffer highlighting to be invisible
vim.cmd("highlight EndOfBuffer ctermbg=0 ctermfg=0 guibg=0 guifg=0")

-- Adjust the completeopt setting
vim.opt.completeopt:remove("preview")

-- -- Set foldmethod to syntax (syntax-based folding)
-- vim.opt.foldmethod = "syntax"

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1

-- Disable folding by default
vim.opt.foldenable = false

-- Set the initial fold level to 2
vim.opt.foldlevel = 2

-- Disables press Enter to continue
vim.opt.shortmess = vim.o.shortmess .. 'c'

vim.opt.hidden = true

vim.opt.whichwrap = 'b,s,<,>,[,],h,l'

vim.opt.pumheight = 10

vim.o.fileencoding = 'utf-8'

vim.opt.cmdheight = 2

-- Defaults Split to Open below
vim.opt.splitbelow = true

-- Defaults Split to Open right
vim.opt.splitright = true

vim.opt.termguicolors = true

vim.opt.conceallevel = 0

vim.opt.showtabline = 2

vim.opt.clipboard = "unnamedplus"

vim.opt.hlsearch = true

vim.opt.ignorecase = true

vim.opt.scrolloff = 3

vim.opt.sidescrolloff = 5

vim.wo.wrap = false

vim.wo.number = true

vim.o.cursorline = true
