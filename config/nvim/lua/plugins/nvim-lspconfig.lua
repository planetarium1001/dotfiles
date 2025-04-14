return {
    "neovim/nvim-lspconfig",
    cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
        -- note: diagnostics are not exclusive to lsp servers
        -- so these can be global keybindings
        -- vim.keymap.set('n', '<Leader>gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
        -- vim.keymap.set('n', '<Leader>[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
        -- vim.keymap.set('n', '<Leader>]d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

        -- vim.api.nvim_create_autocmd('LspAttach', {
        --   desc = 'LSP actions',
        --   callback = function(event)
        --     local opts = {buffer = event.buf}

        -- these will be buffer-local keybindings
        -- because they only work if you have an active language server
        --     vim.keymap.set('n', '<Leader>K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        --     vim.keymap.set('n', '<Leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        --     vim.keymap.set('n', '<Leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        --     vim.keymap.set('n', '<Leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        --     vim.keymap.set('n', '<Leader>go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        --     vim.keymap.set('n', '<Leader>gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        --     vim.keymap.set('n', '<Leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        --     -- vim.keymap.set('n', '<Leader><F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        --     vim.keymap.set('n', '<Leader>gm', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        --     -- vim.keymap.set({'n', 'x'}, '<Leader><F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        --     vim.keymap.set({'n', 'x'}, '<Leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        --     -- vim.keymap.set('n', '<Leader><F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        --     vim.keymap.set('n', '<Leader>gc', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        --   end
        -- })
        -- local signs = {
        --   { name = "DiagnosticSignError", text = "" },
        --   { name = "DiagnosticSignWarn", text = "" },
        --   { name = "DiagnosticSignHint", text = "" },
        --   { name = "DiagnosticSignInfo", text = "" },
        -- }
        -- for _, sign in ipairs(signs) do
        --   vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
        -- end

        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = '',
                    [vim.diagnostic.severity.WARN] = '',
                    [vim.diagnostic.severity.HINT] = '',
                    [vim.diagnostic.severity.INFO] = '',
                }
            },
            virtual_text = true,
            signs = true,
            float = {
                border = "rounded",
            },
        })
    end
}
