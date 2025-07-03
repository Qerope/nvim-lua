local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', lazypath })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', config = function() require('qerope.treesitter') end },
  { 'neovim/nvim-lspconfig' },
  { 'williamboman/mason.nvim', config = true },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'saghen/blink.cmp', version = '*', opts = { keymap = { preset = 'default' }, sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } } } },
  { 'L3MON4D3/LuaSnip' },
  { 'nvim-lualine/lualine.nvim', opts = {} },
  { 'lewis6991/gitsigns.nvim', opts = {} },
  { 'folke/tokyonight.nvim', config = function() vim.cmd.colorscheme('tokyonight') end },
  { 'stevearc/conform.nvim', opts = require('qerope.format') },
  { 'stevearc/oil.nvim', opts = {} },
})
