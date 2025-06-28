return {
  'gaoDean/autolist.nvim',
  ft = { 'markdown', 'text', 'norg' },
  config = function()
    require('autolist').setup()

    vim.keymap.set("i", "<CR>", "<CR><Cmd>AutolistNewBullet<CR>", { buffer = true })
    vim.keymap.set("n", "o", "o<Cmd>AutolistNewBullet<CR>", { buffer = true })
    vim.keymap.set("n", "O", "O<Cmd>AutolistNewBulletBefore<CR>", { buffer = true })
    vim.keymap.set("n", "<CR>", "<Cmd>AutolistToggleCheckbox<CR>", { buffer = true })
    vim.keymap.set("n", ">>", ">><Cmd>AutolistRecalculate<CR>", { buffer = true })
    vim.keymap.set("n", "<<", "<<<Cmd>AutolistRecalculate<CR>", { buffer = true })

    vim.api.nvim_create_autocmd("InsertLeave", {
      callback = function()
        require("autolist").recalculate()
      end
    })
  end
}
