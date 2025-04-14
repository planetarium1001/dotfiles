return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
        require('mason').setup({})
        require('mason-lspconfig').setup({
          ensure_installed = {
              "lua_ls", "rust_analyzer"
          },
          handlers = {
            function(server_name)
              require('lspconfig')[server_name].setup({
                capabilities = lsp_capabilities,
              })
            end,
          },
        })
    end
}
