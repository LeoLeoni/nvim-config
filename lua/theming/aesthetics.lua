-- AESTHETICS
-- Colors
local opt = vim.opt
opt.termguicolors = true
opt.background = "dark"


require('onedark').setup { style = 'darker' }
-- require('onedark').load()
vim.g.tokyonight_style = "night"
vim.g.tokyodark_transparent_background = 0
vim.g.tokyodark_enable_italic_comment = 1
vim.g.tokyodark_enable_italic = 1
vim.g.tokyodark_color_gamma = "1.0"
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()

vim.cmd [[colorscheme tokyonight-night]]
require'lualine'.setup {
    options = {
        theme = 'tokyonight'
    },
    sections = {
       	lualine_y = {'os.date("%I:%M:%S", os.time())'},
	}
}

require'bufferline'.setup{
		options = {
        view = "multiwindow",
        numbers = "ordinal",
        modified_icon = '●',
        tab_size = 18,
        diagnostics = "nvim_diagnostics",
        separator_style = {'|', ''}
    }
}

require('satellite').setup()
require('todo-comments').setup {
	search = {
		pattern = [[\b(KEYWORDS)\b]]
	}
}

-- require('colorizer').setup(nil, { css = true; })


-- local map = function(mode, lhs, rhs, opts)
-- 	local options = { noremap = true, silent = true }
-- 	if opts then
-- 		options = vim.tbl_extend('force', options, opts)
-- 	end
-- 	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
-- end

