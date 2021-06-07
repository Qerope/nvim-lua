require('nvim-treesitter.configs').setup({
  ensure_installed = { 'lua', 'python', 'typescript', 'go', 'rust', 'bash', 'markdown' },
  highlight = { enable = true },
  indent = { enable = true },
})
