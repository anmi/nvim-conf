local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- lsp_zero.ensure_installed({ 'tsserver', 'eslint', 'sumneko_lua', })


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	  	"tsserver",
		"eslint",
		"lua_ls",
  },
  handlers = {
    lsp_zero.default_setup,
  },
})
