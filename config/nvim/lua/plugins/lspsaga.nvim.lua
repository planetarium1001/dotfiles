return {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({})
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    },
    config = function()
        require("lspsaga").setup({
            ui = {
                border = "rounded",
                -- code_action = "💡",
                code_action = "",
            },
        })
    end
}
