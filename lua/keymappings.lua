-- set space as leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true , silent = true })
vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true , silent = true })

-- toggle nvim-tree
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true , silent = true })
