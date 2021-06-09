vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
map('n', '<leader>w', ':w<CR>', { noremap = true })
map('n', '<leader>q', ':q<CR>', { noremap = true })
map('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
