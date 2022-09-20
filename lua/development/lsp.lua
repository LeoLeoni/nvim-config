-- LSP Installer
require("mason").setup {}
require("mason-lspconfig").setup {
	ensure_installed = {
		"lua-language-server",
		"tsserver",
		"vimls",
		"jsonls",
		"cssls",
		"kotlin_language_server"
	}
}

-- LSP servers
local lspconfig = require('lspconfig')
lspconfig.sumneko_lua.setup { settings = { Lua = { diagnostics = { globals = { 'vim' } } } } }
lspconfig.tsserver.setup {}
lspconfig.vimls.setup {}
lspconfig.jsonls.setup {}
lspconfig.cssls.setup {}
lspconfig.kotlin_language_server.setup {}

