--              _                           _
--   __ _ _   _| |_ ___   ___ _ __ ___   __| |___
--  / _` | | | | __/ _ \ / __| '_ ` _ \ / _` / __|
-- | (_| | |_| | || (_) | (__| | | | | | (_| \__ \
--  \__,_|\__,_|\__\___/ \___|_| |_| |_|\__,_|___/

return {
    vim.api.nvim_create_autocmd('BufReadPost', {
        pattern = { '*' },
        callback = function()
            local line_index = vim.fn.line("'\"")
            local max_line = vim.fn.line('$')

            if line_index > 1 and line_index <= max_line then
                vim.api.nvim_exec("normal! g'\"", false)
            end
        end,
    })
}
