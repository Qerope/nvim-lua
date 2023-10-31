vim.g.mapleader = ' '

local map = vim.keymap.set
map('n', '<leader>w', '<cmd>w<CR>')
map('n', '<leader>q', '<cmd>q<CR>')
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { silent = true })
local tb = function(name) return function() require('telescope.builtin')[name]() end end
map('n', '<leader>ff', tb('find_files'))
map('n', '<leader>fg', tb('live_grep'))
map('n', '<leader>fb', tb('buffers'))
map('n', '-', '<cmd>Oil<CR>')
