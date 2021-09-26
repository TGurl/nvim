-- Keymap settings --
--
-- set space as leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true , silent = true })
vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true , silent = true })

-- toggle nvim-tree
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true , silent = true })

-- enable CTRL+S
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<C-s>', ':w<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('v', '<C-s>', ':w<CR>', { noremap = true, silent = false })

