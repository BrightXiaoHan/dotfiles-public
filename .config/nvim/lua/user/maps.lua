vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap
-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Split window
keymap.set('n', '<leader>ss', ':split<Return><C-w>w')
keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w')
-- Window navigation
keymap.set('n', '<leader>', '<C-w>w')
-- Window Resize
keymap.set('n', '<C-Left>', '<C-w><')
keymap.set('n', '<C-Right>', '<C-w>>')
keymap.set('n', '<C-=>', '<C-w>+')
keymap.set('n', '<C-->', '<C-w>-')
keymap.set('n', '<leader>q', ':q<Return>')

-- Telescope
keymap.set('n', '<C-p>', ':Telescope find_files<CR>')
keymap.set('n', '<C-f>', ':Telescope live_grep<CR>')

-- nvim-tree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- nvim-comment
keymap.set('n', '<leader>/', ':CommentToggle<CR>')
keymap.set('v', '<leader>/', ':\'<,\'>CommentToggle<CR>')
