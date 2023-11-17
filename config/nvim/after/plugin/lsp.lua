local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

--lsp.preset('recommended')
lsp.preset({})
lsp.setup()

require("mason").setup()
require("mason-lspconfig").setup {
  handlers = {
    lsp.default_setup,
  },
  ensure_installed = { 
    "lua_ls", 
    "rust_analyzer",
    "gopls",
  },
}
