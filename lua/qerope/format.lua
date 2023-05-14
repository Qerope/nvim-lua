return {
  formatters_by_ft = {
    lua = { 'stylua' },
    javascript = { 'prettier' },
    typescript = { 'prettier' },
    python = { 'ruff_format' },
    go = { 'gofmt' },
  },
  format_on_save = { timeout_ms = 500, lsp_fallback = true },
}
