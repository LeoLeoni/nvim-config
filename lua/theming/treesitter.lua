local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

require('nvim-treesitter.configs').setup {
    ensure_installed = {"typescript", "tsx", "kotlin"},
    highlight = { enable = true },
    indend = { enable = true },
}