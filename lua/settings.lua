function _G.dump(...)
	local objects = vim.tbl_map(vim.inspect, {...})
	print(unpack(objects))
end

-- helper functions --
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g

local scopes = { o = vim.o, b = vim.bo, w = vim.wo }
local function opt(scope, key, value)
	scopes[scope][key] = value
	if scope ~= 'o' then scopes['o'][key] = value end
end

local indent = 2;

-- set colorscheme
-- colorscheme onedark
cmd 'colorscheme onedark'
-- cmd 'colorscheme palenight'
-- cmd 'colorscheme ayu'
-- cmd 'colorscheme gruvbox'
-- cmd 'colorscheme vim-one'
-- cmd 'colorscheme oceanic-next'


-- local to buffer options --
opt('b', 'tabstop', indent)
opt('b', 'softtabstop', indent)
opt('b', 'shiftwidth', indent)
opt('b', 'expandtab', true)
opt('b', 'smartindent', true)
opt('b', 'swapfile', false)

-- local to window options --
opt('w', 'signcolumn', 'yes')
opt('w', 'number', true)
opt('w', 'relativenumber', false)
opt('w', 'list', true)
opt('w', 'wrap', false)

-- global options --
opt('o', 'hlsearch', true)
opt('o', 'incsearch', true)
opt('o', 'hidden', true)
opt('o', 'errorbells', false)
opt('o', 'completeopt', 'menuone,noinsert,noselect')
opt('o', 'ignorecase', true)
opt('o', 'smartcase', true)
opt('o', 'splitbelow', true)
opt('o', 'splitright', true)
opt('o', 'termguicolors', true)
opt('o', 'wildmode', 'list:longest')
opt('o', 'backup', false)
opt('o', 'undodir', '~/.local/share/nvim/undodir')
opt('o', 'undofile', true)
opt('o', 'scrolloff', 8)
opt('o', 'sidescrolloff', 8)
opt('o', 'joinspaces', false)
opt('o', 'showmode', false)
opt('o', 'background', 'dark')

-- mappings --
--local vimp = require('vimp')
--vimp.bind('nvo', 'Y', 'y$')
