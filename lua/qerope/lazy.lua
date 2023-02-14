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
  {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'saadparis/cmp_luasnip' },
    config = function() require('qerope.cmp') end,
  },
  { 'L3MON4D3/LuaSnip' },
  { 'nvim-lualine/lualine.nvim', opts = {} },
  { 'lewis6991/gitsigns.nvim', opts = {} },
  { 'folke/tokyonight.nvim', config = function() vim.cmd.colorscheme('tokyonight') end },
  { 'jose-elias-alvarez/null-ls.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'kyazdani42/nvim-tree.lua', opts = {} },
})
