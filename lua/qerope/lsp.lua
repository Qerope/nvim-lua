local lspconfig = require('lspconfig')

local on_attach = function(_, bufnr)
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local opts = { silent = true, buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  end,
})

vim.lsp.config('lua_ls', {
  settings = { Lua = { diagnostics = { globals = { 'vim' } } } },
})
vim.lsp.enable({ 'pyright', 'ts_ls', 'gopls', 'rust_analyzer', 'lua_ls' })

vim.keymap.set('n', '<leader>ih', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)
