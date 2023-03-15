local lspconfig = require('lspconfig')

local on_attach = function(_, bufnr)
  local opts = { silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
end
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
for _, server in ipairs({ 'pyright', 'ts_ls', 'gopls', 'rust_analyzer' }) do
  lspconfig[server].setup({ on_attach = on_attach, capabilities = capabilities })
end
lspconfig.sumneko_lua.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = { Lua = { diagnostics = { globals = { 'vim' } } } },
})
require('mason-lspconfig').setup({ ensure_installed = { 'pyright', 'ts_ls', 'gopls', 'rust_analyzer', 'lua_ls' } })
