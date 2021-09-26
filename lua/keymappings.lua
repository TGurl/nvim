-- Keymap settings --

local map = vim.api.nvim_set_keymap
local dopts = {noremap = true, silent = true}
local nopts = {noremap = true, silent = false}

-- set space as leader key
-- map('n', '<Space>', '<NOP>', opts)
-- vim.g.mapleader = ' '

-- no hl
map('n', '<Leader>h', ':set hlsearch!<CR>', dopts)

-- toggle nvim-tree
map('n', '<Leader>e', ':NvimTreeToggle<CR>', dopts)

-- enable CTRL+S
map('n', '<C-s>', ':w<CR>', nopts)
map('i', '<C-s>', ':w<CR>', nopts)
map('v', '<C-s>', ':w<CR>', nopts)

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', dopts)
map('i', '<leader>s', '<C-c>:w<CR>', dopts)
