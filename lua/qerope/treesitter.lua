require('nvim-treesitter.configs').setup({
  ensure_installed = { 'lua', 'python', 'typescript', 'go', 'rust', 'bash', 'markdown' },
  highlight = { enable = true },
  indent = { enable = true },
})
require('nvim-treesitter').setup({})
require('nvim-treesitter').install({ 'lua', 'python', 'typescript', 'go', 'rust', 'bash', 'markdown' })
vim.api.nvim_create_autocmd('FileType', {
  callback = function(ev)
    if pcall(vim.treesitter.start, ev.buf) then
      vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
