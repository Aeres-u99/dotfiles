return {
    -- Edit Markdown Table Plugin
    {
        'kiran94/edit-markdown-table.nvim',
        cmd = "EditMarkdownTable",
        config = function()
            -- You can add additional setup here for this plugin if needed
        end
    },
    -- Markdown Plugin
    {
    'MeanderingProgrammer/render-markdown.nvim',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
--    @module 'render-markdown',
    --@type render.md.UserConfig
    opts = {},
    },
    -- Image Clip Plugin
    'HakonHarnes/img-clip.nvim',
}

