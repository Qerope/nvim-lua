local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettier,
  },
  on_attach = function(client, bufnr)
    if client.resolved_capabilities.document_formatting then
      vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
    end
  end,
})
