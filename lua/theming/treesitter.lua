local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

require('nvim-treesitter.configs').setup {
    ensure_installed = {"typescript", "tsx", "kotlin", "scss", "javascript"},
    highlight = { enable = true },
    indent = { enable = true },
    textobjects = {
        select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
            keymaps = {
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
            }
        }
    }
}
