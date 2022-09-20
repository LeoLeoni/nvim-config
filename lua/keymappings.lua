local map = vim.api.nvim_set_keymap
local noremap = { noremap = true, silent = false }
local silent = { noremap = true, silent = true }

-- Center Search Results
map("n", "n", "nzz", silent)
map("n", "N", "Nzz", silent)
map("n", "*", "*zz", silent)
map("n", "#", "#zz", silent)
map("n", "g*", "g*zz", silent)

-- Window switching
map("n", "<C-h>", "<C-w>h", noremap)
map("n", "<C-l>", "<C-w>l", noremap)
map("n", "<C-j>", "<C-w>j", noremap)
map("n", "<C-k>", "<C-w>k", noremap)
-- Buffer Switching
map("n", "<leader>;", ":bnext<cr>", noremap)
map("n", "<leader>:", ":bprev<cr>", noremap)



-- TODO revisit these
-- Telescope keybindings
map("n", "<space>ff", "<cmd>lua require('telescope.builtin').fd()<cr>", silent)
map("n", "<leader>fs", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", silent)
map("n", "<leader>fr", "<cmd>lua require('telescope.builtin').lsp_references()<cr>", silent)
map("n", "<space>fw", "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>", silent)
map("n", "<space>fa", "<cmd>lua require('telescope.builtin').live_grep()<cr>", silent)

-- Tab switching
map('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<CR>', silent)
map('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<CR>', silent)
map('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<CR>', silent)
map('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<CR>', silent)
map('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<CR>', silent)
map('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<CR>', silent)
map('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<CR>', silent)
map('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<CR>', silent)
map('n', '<leader>9', '<cmd>BufferLineGoToBuffer 9<CR>', silent)

map('n', '<leader>w', ':bdelete<CR>', silent)
map('n', '<leader>l', ':noh<CR>', silent) -- clears highlighed search

-- Auto close brackets
-- TODO figure out how to close the way that vscode does
-- map('i', '{', '{}<left>', noremap)
-- map('i', '[', '[]<left>', noremap)
-- map('i', '(', '()<left>', noremap)
-- map('i', '"', '""<left>', noremap)
-- map('i', "'", "''<left>", noremap)
