vim.g.mapleader = " "
vim.g.maplocalleader = " "
local keymap = vim.keymap
-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')
-- Window Resize
keymap.set('n', '<C-Left>', '<C-w><')
keymap.set('n', '<C-Right>', '<C-w>>')
keymap.set('n', '<C-=>', '<C-w>+')
keymap.set('n', '<C-->', '<C-w>-')
keymap.set('n', '<leader>q', ':q<Return>')

-- Telescope
keymap.set('n', '<C-p>', ':Telescope find_files<CR>')
keymap.set('n', '<C-f>', ':Telescope live_grep<CR>')

-- nvim-comment
keymap.set('n', '<leader>/', ':CommentToggle<CR>')
keymap.set('v', '<leader>/', ':\'<,\'>CommentToggle<CR>')

local leaderkeymap = {
    ["<tab>"] = { "<C-w>w" },
    s = {
      name = '+split',
      s = { "<cmd>split<cr>", "Split" },
      v = { "<cmd>vsplit<cr>", "VSplit" },
    },
    e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
}

local status, wk = pcall(require, "whichkey_setup")
if status then
  wk.register_keymap('leader', leaderkeymap)
end
