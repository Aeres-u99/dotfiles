return {
    "azabiong/vim-highlighter",
    init = function()
         vim.cmd([[
           let HiSet   = 'h<CR>'
           let HiErase = 'h<BS>'
           let HiClear = 'h<C-L>'
           let HiFind  = 'h<Tab>'
           let HiSetSL = 'h<CR>'
         ]])
    end,
}
