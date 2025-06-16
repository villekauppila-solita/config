-- Opts
local opts = { noremap = true, silent = true }

-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Remove search highlight with esc
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Disable space basic usage
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
