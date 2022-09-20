local opt = vim.opt

-- Remap leader key default is \
vim.g.mapleader = ' '

-- General Settings
-- opt.hlsearch = true
opt.ignorecase = true
opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.ttyfast = true
opt.encoding = 'utf-8'
opt.splitbelow = true
opt.splitright = true

-- Tab size for ts development
vim.api.nvim_create_autocmd({"FileType"}, {pattern = {"typescriptreact", "javascript", "typescript", "scss"}, command = "set tabstop=2"})
vim.api.nvim_create_autocmd({"FileType"}, {pattern = {"typescriptreact", "javascript", "typescript", "scss"}, command = "set shiftwidth=2"})
vim.api.nvim_create_autocmd({"FileType"}, {pattern = {"typescriptreact", "javascript", "typescript", "scss", "kotlin"}, command = "set expandtab"})

-- Config packages
require('plugins')
require('keymappings')

require('development/lsp')
require('development/lspsaga-setup')
require('development/cmp-setup')

require('theming/aesthetics')
require('theming/treesitter')
require('telescope-settings')

