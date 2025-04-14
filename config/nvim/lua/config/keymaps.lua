--  _  __
-- | |/ /___ _   _ _ __ ___   __ _ _ __  ___
-- | ' // _ \ | | | '_ ` _ \ / _` | '_ \/ __|
-- | . \  __/ |_| | | | | | | (_| | |_) \__ \
-- |_|\_\___|\__, |_| |_| |_|\__,_| .__/|___/
--           |___/                |_|

-- local map = vim.api.nvim_set_keymap
-- local opt = {noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- === Move fastly ===
vim.keymap.set("", "H", "10h", { noremap = true, silent = true })
vim.keymap.set("", "J", "10j", { noremap = true, silent = true })
vim.keymap.set("", "K", "10k", { noremap = true, silent = true })
vim.keymap.set("", "L", "10l", { noremap = true, silent = true })
-- vim.keymap.set("", "<S-Down>", "<Down><Down><Down><Down><Down>", { noremap = true, silent = true })
-- vim.keymap.set("", "<S-Up>", "<Up><Up><Up><Up><Up>", { noremap = true, silent = true })

-- === Fasy copy/delete with insert mode ===
-- vim.keymap.set("n", "da", "dda", { noremap = true, silent = true })
-- vim.keymap.set("n", "ya", "yya", { noremap = true, silent = true })

-- === Visual Mode ===
-- vim.keymap.set("n", "vi", "<C-v>", { noremap = true, silent = true })
-- vim.keymap.set("n", "VI", "<S-v>", { noremap = true, silent = true })

-- === map <Leader>G to <Leader>g ===
-- vim.keymap.set("n", "<Leader>GD", "<Leader>gD", { noremap = true, silent = true })

-- === map <Leader>q and <Leader>w/W ===
-- vim.keymap.set("n", "<Leader>w", ":w<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<Leader>W", ":w<CR>a", { noremap = true, silent = true })
-- vim.keymap.set("n", "<Leader>q", ":q<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<Leader>Q", ":wq<CR>", { noremap = true, silent = true })

-- === buffer ===
-- local map = vim.api.nvim_set_keymap
-- local opts = { noremap = true, silent = true }

-- Move to previous/next
vim.keymap.set('n', '<Leader>,', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>.', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
-- Re-order to previous/next
vim.keymap.set('n', '<Leader><', '<Cmd>BufferMovePrevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>>', '<Cmd>BufferMoveNext<CR>', { noremap = true, silent = true })

-- Goto buffer in position...
-- map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
-- map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
-- map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
-- map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
-- map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
-- map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
-- map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
-- map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
-- map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
-- map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
-- map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned

-- Close buffer
vim.keymap.set('n', '<Leader>b', '<Cmd>BufferClose<CR>', { noremap = true, silent = true })

-- Wipeout buffer
--                 :BufferWipeout

-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- Magic buffer-picking mode
-- map('n', '<C-p>',   '<Cmd>BufferPick<CR>', opts)
-- map('n', '<C-s-p>', '<Cmd>BufferPickDelete<CR>', opts)

-- Sort automatically by...
-- map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
-- map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
-- map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
-- map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
-- map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- === glance ===
-- vim.keymap.set('n', '<Leader>gld', '<CMD>Glance definitions<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<Leader>glr', '<CMD>Glance references<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<Leader>gly', '<CMD>Glance type_definitions<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<Leader>glm', '<CMD>Glance implementations<CR>', { noremap = true, silent = true })

-- === trouble ===
-- vim.keymap.set('n', '<Leader>XE', '<Leader>xx', { noremap = true, silent = true })
-- vim.keymap.set('n', '<Leader>xe', '<Leader>xX', { noremap = true, silent = true })
-- vim.keymap.set('n', '<Leader>xs', '<Leader>cs', { noremap = true, silent = true })

-- === format ===
vim.keymap.set('n', '<Leader>=', ':lua vim.lsp.buf.format { async = true }<CR>', { noremap = true, silent = true })

-- === windows size ===
-- vim.keymap.set("n", "<Leader>rw", "<C-w>=", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>wk", "<C-w>+", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>wj", "<C-w>-", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>wh", "<C-w><", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>wl", "<C-w>>", { noremap = true, silent = true })

-- === window ===
vim.keymap.set("n", "<Leader>wo", "<C-w>o", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>wv", "<C-w>v", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ws", "<C-w>s", { noremap = true, silent = true })
-- === jump ===
vim.keymap.set("n", "<Leader>wh", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>wj", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>wk", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>wl", "<C-w>l", { noremap = true, silent = true })


-- === Lspsaga ===
vim.keymap.set('n', '<Leader>gK', '<cmd>Lspsaga hover_doc<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gd", "<cmd>Lspsaga peek_definition<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gD", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gf", "<cmd>Lspsaga lsp_finder<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gr", "<cmd>Lspsaga rename<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>g[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>g]", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gs", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gs", "<cmd>Lspsaga show_line_diagnostics<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ga", "<cmd>Lspsaga code_action<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<Leader>ga", "<cmd>Lspsaga code_action<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<Leader>go", "<cmd>Lspsaga outline<CR>", { noremap = true, silent = true })

-- === flash.nvim ===
-- vim.keymap.set("n", "<Leader>/", "s", { noremap = true, silent = true })

-- === nohlsearch ===
vim.keymap.set("n", "<Leader><CR>", ":nohlsearch<CR>", { noremap = true, silent = true })

-- === markdown ===
vim.keymap.set("n", "<Leader>r", ":MarkdownPreviewToggle<CR>", { noremap = true, silent = true })
