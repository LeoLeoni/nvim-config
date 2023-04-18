-- LSP Installer
require("mason").setup {}
require("mason-lspconfig").setup {
	ensure_installed = {
		"tsserver",
		"vimls",
		"jsonls",
		"cssls",
		"kotlin_language_server"
	}
}

-- LSP servers
local lspconfig = require('lspconfig')
lspconfig.tsserver.setup {
	init_options = {
		maxTsServerMemory = 4096,
		plugins = {
			-- { name = "ts-plugin-scss-modules" },
			{ name = "typescript-plugin-css-modules" }
		}
	}
}
lspconfig.vimls.setup {}
lspconfig.jsonls.setup {}
lspconfig.cssls.setup {}
lspconfig.kotlin_language_server.setup {}

require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.diagnostics.ktlint,
        require("null-ls").builtins.formatting.ktlint,
        require("null-ls").builtins.diagnostics.eslint_d,
        require("null-ls").builtins.formatting.prettierd,
    },
})
