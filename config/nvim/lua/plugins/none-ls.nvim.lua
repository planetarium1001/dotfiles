return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local defaults = {
            border = nil,
            cmd = { "nvim" },
            debounce = 250,
            debug = false,
            default_timeout = 5000,
            diagnostic_config = {},
            diagnostics_format = "#{m}",
            fallback_severity = vim.diagnostic.severity.ERROR,
            log_level = "warn",
            notify_format = "[null-ls] %s",
            on_attach = nil,
            on_init = nil,
            on_exit = nil,
            root_dir = require("null-ls.utils").root_pattern(".null-ls-root", "Makefile", ".git"),
            root_dir_async = nil,
            should_attach = nil,
            sources = nil,
            temp_dir = nil,
            update_in_insert = false,
        }
        local null_ls = require("null-ls")

        -- code action sources
        local code_actions = null_ls.builtins.code_actions

        -- diagnostic sources
        local diagnostics = null_ls.builtins.diagnostics

        -- formatting sources
        local formatting = null_ls.builtins.formatting

        -- hover sources
        local hover = null_ls.builtins.hover

        -- completion sources
        local completion = null_ls.builtins.completion
        local sources = {
            null_ls.builtins.formatting.prettier,
            null_ls.builtins.diagnostics.write_good,
            null_ls.builtins.code_actions.gitsigns,
        }

        null_ls.setup({
            sources = sources,
        })
    end,
}
