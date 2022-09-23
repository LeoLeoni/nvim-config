local saga = require 'lspsaga'

-- use default config
saga.init_lsp_saga()


local map = vim.api.nvim_set_keymap
local opts = { silent = true, noremap = true }

map("n", "<leader>,", "<cmd>Lspsaga code_action<cr>", opts)

map("n", "gh", "<cmd>Lspsaga lsp_finder<cr>", opts)
map("n", "<space>rn", "<cmd>Lspsaga rename<cr>", opts)
-- map("n", "gs", "<cmd>Lspsaga signature_help<cr>", opts)
-- map("x", "gx", ":<c-u>Lspsaga range_code_action<cr>", opts)
map("n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
-- map("n", "gp", "<cmd>Lspsaga preview_definition<cr>", opts)
-- map("n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
-- map("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
-- map("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
-- map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
-- map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})

-- Lsp Keymaps
map('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
-- map('n', 'gD', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
-- map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
-- map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)