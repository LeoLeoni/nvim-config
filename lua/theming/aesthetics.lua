-- AESTHETICS
-- Colors
local opt = vim.opt
opt.termguicolors = true
opt.background = "dark"


-- require('onedark').setup { style = 'darker' }
-- require('onedark').load()
vim.g.tokyonight_style = "night"
vim.g.tokyodark_transparent_background = 0
vim.g.tokyodark_enable_italic_comment = 1
vim.g.tokyodark_enable_italic = 1
vim.g.tokyodark_color_gamma = "1.0"
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup {
	color_overrides = {
		latte = {
			rosewater = "#E8B5AA",
			flamingo = "#E7A2A2",
			pink = "#EF9CD9",
			mauve = "#A96FF3",
			red = "#E24D70",
			maroon = "#E8727F",
			peach = "#FC8B49",
			yellow = "#ECB866",
			green = "#73C166",
			teal = "#55BAB7",
			sky = "#46C0E8",
			sapphire = "#4AB3D0",
			blue = "#538DF7",
			lavender = "#93A2FD",
		}
	}
}

vim.cmd [[colorscheme catppuccin]]
require'lualine'.setup {
    options = {
        theme = 'catppuccin'
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

