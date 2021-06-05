vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
map('n', '<leader>w', ':w<CR>', { noremap = true })
map('n', '<leader>q', ':q<CR>', { noremap = true })
map('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
